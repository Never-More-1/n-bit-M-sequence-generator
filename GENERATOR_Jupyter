from pynq.overlay import Overlay
from pynq import MMIO
from time import sleep
platform = Overlay("test.bit")
IP_BASE_ADDRESS = 0x43C00000
ADDRESS_RANGE = 0x1000
mmio = MMIO(IP_BASE_ADDRESS, ADDRESS_RANGE)
result = mmio.read(8) 
print("CORE VERSION is 0x{0:03x}".format(result)) # 47465550
IP_BASE = 0x41220000 # RGB светодиод
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
