import re
import numpy as np
import matplotlib.pyplot as plt
from pynq.overlay import Overlay
from pynq import MMIO
from time import sleep
from collections import Counter

platform = Overlay("LFSR_9.bit")
IP_BASE_ADDRESS = 0x43C00000
ADDRESS_RANGE = 0x1000
mmio = MMIO(IP_BASE_ADDRESS, ADDRESS_RANGE)

IP_BASE = 0x41220000 # RGB светодиод
RANGE = 0x1000
DATA_OFFSET = 0x0
TRISTATE_OFFSET = 0x4

mmio.write(3*4, 0xf) # SEED = 000001111
sleep(1)
seed = mmio.read(3*4)
print("SEED is 0x{0:03x}\n".format(seed))
mmio.write(4*4, 0x1) # INIT = 1

sleep(1)

test = [None] * (2 ** 9 - 1)

mmio.write(4*4, 0x0) # INIT = 0

result = mmio.read(6*4)
print("LFSR is 0x{0:03x}".format(result))
test[0] = result

count = 0
i = 0
finish = 0
while(finish != 1):
    i += 1
    mmio.write(5*4, 0x1) # GO = 1
    mmio.write(5*4, 0x0) # GO = 0
    result = mmio.read(6*4)
    print("LFSR is 0x{0:03x}".format(result))

    if(result == seed):
      finish = 1     
    else:
        test[i] = result

print("\nNumber of iterations: ", i)

#Histogram of the distribution of symbols sequence (test 1)
plt.figure(figsize=(20, 5))
plt.hist(test,color = 'black', edgecolor = 'white', bins = int(512))
plt.title('Гистограмма')

#Histogram of distribution on the plane (test 2)
size = 2**9  
arrayOut = np.zeros((size+1, size+1))

for i in range(0, len(test)-1,1):  
    arrayOut[test[i],test[i+1]] += 1

plt.figure(figsize=(10, 5))
plt.pcolor(arrayOut)
plt.colorbar()
plt.title("Распределение на плоскости")
plt.xlabel("X")
plt.ylabel("Y")
plt.grid(False)
plt.show()

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
ax1.set_ylabel('Количество')
for i, v in enumerate(counts_1.values()):
    ax1.text(i, v + 0.5, str(v), ha='center')

ax2.bar(counts_2.keys(), counts_2.values(), color='red')
ax2.set_ylabel('Количество')
for i, v in enumerate(counts_2.values()):
    ax2.text(i, v + 0.5, str(v), ha='center')

ax3.bar(counts_3.keys(), counts_3.values(), color='green')
ax3.set_ylabel('Количество')
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
    direction = 0  # 0 = constant, 1 = increasing, -1 = decreasing
    
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
    
    sorted_lengths = sorted(length_counts.items())
    x_values = [x[0] for x in sorted_lengths]
    y_values = [x[1] for x in sorted_lengths]
    
    plt.figure(figsize=(10, 6))
    bars = plt.bar(x_values, y_values)
    
    for bar in bars:
        height = bar.get_height()
        plt.text(bar.get_x() + bar.get_width()/2., height, f'{int(height)}', ha='center', va='bottom', fontsize=10)
    
    plt.xlabel('Длина сегментов', fontsize=12)
    plt.ylabel('Количество сегментов', fontsize=12)
    plt.title("Распределение длин монотонных сегментов", fontsize=14)
    plt.xticks(x_values) 
    plt.grid(axis='y', linestyle='--', alpha=0.7)
    plt.tight_layout()
    plt.show()
plot_monotonic_segments(test)

#Autocorrelation (test 5)
def check_autocorrelation(sequence):

    n = len(sequence)
    autocorr = []
    
    for shift in range(n):
        sum_corr = 0
        for i in range(n):
            sum_corr += sequence[i] * sequence[(i + shift) % n]
        autocorr.append(sum_corr)
    
    autocorr = [x / n for x in autocorr]
    
    plt.figure(figsize=(10, 5))
    plt.plot(autocorr, 'o-')
    plt.title("АКФ")
    plt.grid(True)
    plt.show()
    
check_autocorrelation(test)
