from ADCFile import *

oriPath = "SNR\\"
outPath = "SNR_D\\"
os.makedirs(outPath, exist_ok= True)
files = listdir(oriPath)

for f in files:
    data = open_file_b(oriPath + f + ".ADC")
    out = open(outPath + f + ".txt", "w", encoding="utf8")
    codeData = ADCCodeReader(data, out)
    print(f)
    while True:
        codeData.readOP()
        if codeData.p == len(data):
            break
    out.close()
