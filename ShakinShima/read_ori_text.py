from Lib import *


ori_files=["output1.txt", "output2.txt", "output3.txt", "output4.txt", "output5.txt", ]
texts = MultipleLineTexts()

for file in ori_files:
    with open(file,'r',encoding='shiftjis') as f:
        f = f.readlines()
        for line in f:
            line=line.replace('\n','')
            texts.ReadFromLine(line)

texts.save_trans_json("原文.json")
texts.save("MultipleLineTexts_ori.json")