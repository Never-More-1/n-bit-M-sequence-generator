from pynq.overlay import Overlay
from pynq import MMIO
from time import sleep
platform = Overlay("test.bit")
IP_BASE_ADDRESS = 0x43C00000
ADDRESS_RANGE = 0x1000
mmio = MMIO(IP_BASE_ADDRESS, ADDRESS_RANGE)
result = mmio.read(8) 
print("CORE VERSION is 0x{0:03x}".format(result)) # 47465550
IP_BASE = 0x41210000 # RGB светодиод
RANGE = 0x1000
DATA_OFFSET = 0x0
TRISTATE_OFFSET = 0x4
mm = MMIO(IP_BASE,RANGE)
mm.write(TRISTATE_OFFSET, 0x0) #Все GPIO выходы
mmio.write(3*4, 0x1) # SEED = 0000000000001
sleep(1)
seed = mmio.read(3*4)
print("SEED is 0x{0:03x}".format(seed))
mmio.write(4*4, 0x1) # INIT = 1
mm.write(DATA_OFFSET, 0x7)
sleep(1)
mmio.write(4*4, 0x0) # INIT = 0
mmio.write(5*4, 0x1) # GO = 1
mmio.write(5*4, 0x0) # GO = 0
result = mmio.read(6*4)
print("LFSR is 0x{0:03x}".format(result))
i = 0
mmio.write(5*4, 0x1) # GO = 1
mmio.write(5*4, 0x0) # GO = 0
result = mmio.read(6*4)
print("LFSR is 0x{0:03x}".format(result))
while (result != seed):        
    mmio.write(5*4, 0x1) # GO = 1
    mmio.write(5*4, 0x0) # GO = 0
    i += 1
    result = mmio.read(6*4)
    print("LFSR is 0x{0:03x}".format(result))
    mm.write(DATA_OFFSET, 0x5)

#Histogram of the distribution of symbols sequence (test 1)
plt.hist(test, bins=1000, color = 'black')
plt.title("Гистограмма распределения символов последовательности")
plt.xlabel("Значения")
plt.ylabel("Частота")
plt.show()

#Histogram of distribution on the plane (test 2)
size = 2**9  
arrayOut = np.zeros((size+1, size+1))

for i in range(0, len(test)-1,2):  
    arrayOut[test[i],test[i+1]] += 1

plt.figure(figsize=(10, 5))
plt.pcolor(arrayOut)
plt.colorbar()
plt.title("Distribution on the plane")
plt.xlabel("X")
plt.ylabel("Y")
plt.grid(False)
mm.write(DATA_OFFSET, 0x2)
plt.show()
mm.write(DATA_OFFSET, 0x0)

#Graphical check of a series of symbols (test 3)
def count_pattern(number, pattern):
    count = 0
    for i in range(len(number) - len(pattern) + 1):
        if number[i:i+len(pattern)] == pattern:
            count += 1
    return count

count_0 = 0
count_1 = 0
count_00 = 0
count_01 = 0
count_10 = 0
count_11 = 0
count_000 = 0
count_001 = 0
count_010 = 0
count_011 = 0
count_100 = 0
count_101 = 0
count_110 = 0
count_111 = 0

for num in test:
    bin_str = bin(num)[2:].zfill(9)

    count_0 += count_pattern(bin_str, '0')
    count_1 += count_pattern(bin_str, '1')
    count_00 += count_pattern(bin_str, '00')
    count_01 += count_pattern(bin_str, '01')
    count_10 += count_pattern(bin_str, '10')
    count_11 += count_pattern(bin_str, '11')
    count_000 += count_pattern(bin_str, '000')
    count_001 += count_pattern(bin_str, '001')
    count_010 += count_pattern(bin_str, '010')
    count_011 += count_pattern(bin_str, '011')
    count_100 += count_pattern(bin_str, '100')
    count_101 += count_pattern(bin_str, '101')
    count_110 += count_pattern(bin_str, '110')
    count_111 += count_pattern(bin_str, '111')
    
counts_1 = {
    '0': count_0,
    '1': count_1
}

counts_2 = {
    '00': count_00,
    '01': count_01,
    '10': count_10,
    '11': count_11
}

counts_3 = {
    '000': count_000,
    '001': count_001,
    '010': count_010,
    '011': count_011,
    '100': count_100,
    '101': count_101,
    '110': count_110,
    '111': count_111
}
    
fig, (ax1, ax2, ax3) = plt.subplots(3, 1, figsize=(10, 10))

ax1.bar(counts_1.keys(), counts_1.values(), color='blue')
# ax1.set_title('1-symbol patterns')
ax1.set_ylabel('Count')
for i, v in enumerate(counts_1.values()):
    ax1.text(i, v + 0.5, str(v), ha='center')

ax2.bar(counts_2.keys(), counts_2.values(), color='red')
# ax2.set_title('2-symbol patterns')
ax2.set_ylabel('Count')
for i, v in enumerate(counts_2.values()):
    ax2.text(i, v + 0.5, str(v), ha='center')

ax3.bar(counts_3.keys(), counts_3.values(), color='green')
# ax3.set_title('3-symbol patterns')
ax3.set_ylabel('Count')
for i, v in enumerate(counts_3.values()):
    ax3.text(i, v + 0.5, str(v), ha='center')

plt.tight_layout()
plt.show()

#Monotonicity check (test 4)
def find_monotonic_segments(sequence):
    if len(sequence) <= 1:
        return []
    
    segments = []
    start = 0
    direction = 0 
    
    for i in range(1, len(sequence)):
        current_dir = 0
        if sequence[i] > sequence[i-1]:
            current_dir = 1
        elif sequence[i] < sequence[i-1]:
            current_dir = -1
        
        if direction == 0:
            direction = current_dir
        elif current_dir != direction:
            segments.append((start, i-1, direction))
            start = i-1
            direction = current_dir
    
    segments.append((start, len(sequence)-1, direction))
    return segments

def analyze_monotonicity(sequence):
    segments = find_monotonic_segments(sequence)
    segment_lengths = [end - start + 1 for start, end, dir in segments]
    num_segments = len(segments)
    return num_segments, segment_lengths

def plot_monotonic_segments(sequence):
    num_segments, lengths = analyze_monotonicity(sequence)
    length_counts = Counter(lengths)
    print(length_counts)
    plt.figure(figsize=(10, 15))
    plt.bar(length_counts.keys(), length_counts.values())
    plt.xlabel('Segment length')
    plt.ylabel('Number of segments')
    plt.grid(True)
    plt.show()

plot_monotonic_segments(test)

#Autocorrelation (test 5)
n = len(test)
    autocorr = []

    for shift in range(n):
        sum_corr = 0
        for i in range(n):
            sum_corr += test[i] * test[(i + shift) % n]
        autocorr.append(sum_corr)

    autocorr = [x / n for x in autocorr]

    plt.figure(figsize=(10, 5))
    plt.plot(autocorr, 'o-')
    plt.title("Autocorrelation")
    plt.xlabel("Shift")
    plt.ylabel("Autocorrelation")
    plt.grid(True)
    plt.show()
