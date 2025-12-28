from SCR_FILE import *

oripath = "script_new"
# oripath = "script_dump"
outpath = "script_recompile"
os.makedirs(outpath, exist_ok=True)

## 从json重新编译
for file in os.listdir(oripath):
    if file.endswith(".json"):
        com = SCR_COMPILER(encoding="932")
        com.read_fromjson(os.path.join(oripath, file))
        data = com.compile()
        save_file_b(os.path.join(outpath, file.replace(".json", "")), data)

## 从txt重新编译
# for file in os.listdir(oripath):
#     if file.endswith(".txt"):
#         com = SCR_COMPILER(encoding="932")
#         com.read_fromtxt(os.path.join(oripath, file))
#         data = com.compile()
#         ave_file_b(os.path.join(outpath, file.replace(".txt", "")), data)