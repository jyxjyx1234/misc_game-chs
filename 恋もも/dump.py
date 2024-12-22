from SPT_FILE import *

oripath = "gsp_test"
outpath = "gt_input_test"
os.makedirs(outpath, exist_ok=True)
for root, dirs, files in os.walk(oripath):
    for file in files:
        if file.endswith(".spt"):
            print(file)
            spt = SPT_FILE(os.path.join(root, file))
            spt.dump_text(os.path.join(outpath, file + ".json"))