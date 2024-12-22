from ADCFile import *

oriPath = "release\\SNR_D\\"
#oriPath = "SNR_D\\"
outPath = "release\\SNR\\"
os.makedirs(outPath, exist_ok = True)
files = listdir(oriPath)

for f in files:
    compilier = ADCFileComplier(oriPath + f + ".txt")
    compilier.genCodeData()
    save_file_b(outPath + f + ".ADC", compilier.codeData)
