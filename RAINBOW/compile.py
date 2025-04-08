from MES_FILE import *

oriPath = "dec_trans\\"
# oriPath = "dec\\"
files = os.listdir(oriPath) + os.listdir("sp_trans\\")
outpath = "release\\SCRIPTS\\"
#outpath = "D:\\game\\NAODL\\NAO\\SCRIPTS\\"

os.makedirs(outpath, exist_ok = True)

for file in files:
    logging.info(file)
    lines = []
    if file in os.listdir("sp_trans\\"):
        with open(f"sp_trans\\{file}", "r", encoding = "utf-8") as f:
            f = f.readlines()
            header = [i.strip("\n") for i in f[:4]]
            f = f[4:]
            for l in f:
                lines.append(Line(l, file, "936"))
            compiler = MES_Compiler(header, lines)
            compiler.compile(f"{outpath}{file[:-4]}")

    else:
        with open(f"{oriPath}{file}", "r", encoding = "utf-8") as f:
            f = f.readlines()
            header = [i.strip("\n") for i in f[:4]]
            f = f[4:]
            for l in f:
                lines.append(Line(l, file))
            compiler = MES_Compiler(header, lines)
            compiler.compile(f"{outpath}{file[:-4]}")
