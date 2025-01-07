from MES_FILE import *

files = os.listdir("dec_trans\\")
outpath = "release\\SCRIPTS\\"
#outpath = "D:\\game\\NAODL\\NAO\\SCRIPTS\\"

os.makedirs(outpath, exist_ok = True)

for file in files:
    lines = []
    with open(f"dec_trans\\{file}", "r", encoding = "utf-8") as f:
        f = f.readlines()
        header = [i.strip("\n") for i in f[:4]]
        f = f[4:]
        for l in f:
            lines.append(Line(l))
    compiler = MES_Compiler(header, lines)
    compiler.compile(f"{outpath}{file[:-4]}")