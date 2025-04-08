from Lib import *
from cov_int import *

oriPath = "HGO_DUMP_TRANS\\"
# oriPath = "HGO_DUMP\\"
outPath = "release\\A98SYS\\"
outPath2 = "release\\A98FAST\\"

os.makedirs(outPath, exist_ok=True)

def compile_args(args, offsetDict):
    command = b""
    for arg in args[2:]:
        if re.match(r"strt\((.*)\)", arg):
            arg = re.match(r"strt\((.*)\)", arg).group(1).encode("932") + b"\x00"
            command += arg
        elif re.match(r"str\((.*)\)", arg):
            arg = re.match(r"str\((.*)\)", arg).group(1).encode("932") + b"\x00"
            command += arg
        elif re.match(r"u32\((.*)\)", arg):
            i = int(re.match(r"u32\((.*)\)", arg).group(1))
            i = cal_back(i)
            arg = to_bytes(i, 4)
            command += arg
        elif re.match(r"u32j\((.*)\)", arg):
            i = int(re.match(r"u32j\((.*)\)", arg).group(1))
            if offsetDict and i > 0:
                i = offsetDict[i]
            i = cal_back(i)
            arg = to_bytes(i, 4)
            command += arg
        elif re.match(r"u8\((.*)\)", arg):
            arg = to_bytes(int(re.match(r"u8\((.*)\)", arg).group(1)), 1)
            command += arg
        elif re.match(r"u16\((.*)\)", arg):
            arg = to_bytes(int(re.match(r"u16\((.*)\)", arg).group(1)), 2)
            command += arg
        elif re.match(r"u16j\((.*)\)", arg):
            arg = to_bytes(int(re.match(r"u16j\((.*)\)", arg).group(1)), 2)
            command += arg
    return command


for filename in os.listdir(oriPath):
    print(filename)
    funcs = []
    commands = []
    offset = 0
    oriFile = open(oriPath + filename, "r", encoding="utf-8")
    offsetDict = {}
    for line in oriFile:
        line = line.strip("\n")
        if line.startswith("$"):
            args = line.split("|")
            funcs.append(args)
        elif line.startswith("@"):
            args = line.split("|")
            oriOffset = int(args[0][1:])
            offsetDict[oriOffset] = offset
            op = bytes.fromhex(args[1][1:])
            command = op
            command += compile_args(args, offsetDict = None)
            offset += len(command)
    oriFile.seek(0)
    for line in oriFile:
        if line.startswith("@"):
            args = line.split("|")
            op = bytes.fromhex(args[1][1:])
            command = op
            command += compile_args(args, offsetDict)
            commands.append(command)

    funcBytes = b""
    for func in funcs:
        funcBytes += func[0].encode("932") + b"\x00" * (0x1c - len(func[0].encode("932"))) + to_bytes(int(func[1]), 4) + to_bytes(offsetDict[int(func[2])], 4)
    
    data = to_bytes(len(funcs), 4) + funcBytes + b"".join(commands)
    fn = filename.replace(".txt", "")
    if os.path.exists(outPath + fn):
        save_file_b(outPath + fn, data)
    else:
        save_file_b(outPath2 + fn, data)
    # oridata = open_file_b("HGO\\" + filename.replace(".txt", ""))
    # if data != oridata:
    #     print("ERROR")
    #     print(filename)    