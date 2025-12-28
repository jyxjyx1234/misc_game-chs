import os
f = "ss_20251008_074050"
for file in os.listdir(f):
    data = open(os.path.join(f,file), "rb").read()
    try:
        datasjis = data.decode("shift_jis")
        datautf8 = datasjis.encode("utf-8")
        open(f + "/" + file, "wb").write(datautf8)
    except:
        pass