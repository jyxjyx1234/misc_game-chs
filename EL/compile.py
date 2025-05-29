from ai5win_mes import *

oriPath = "MES"
transPath = "DEC_trans"
outPath = "release\\MES"
os.makedirs(outPath, exist_ok=True)

fileName = "CG.MES"
file = AI5WINScript(os.path.join(outPath, fileName), os.path.join(transPath, fileName.replace(".MES", ".txt")), 1, "932", verbose=0, debug=0)
file.assemble()

for fileName in os.listdir(oriPath):
    # print(f"Processing {fileName}...")
    try:
        if fileName.endswith(".MES"):
            file = AI5WINScript(os.path.join(outPath, fileName), os.path.join(transPath, fileName.replace(".MES", ".txt")), 1, "932", verbose=0, debug=0)
            file.assemble()
    except Exception as e:
        print(f"Error processing {fileName}: {e}")
        continue