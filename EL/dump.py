from Lib import *
from ai5win_mes import *

oriPath = "MES"
outPath = "DEC"

# fileName = "NAME.MES"
# file = AI5WINScript(os.path.join(oriPath, fileName), os.path.join(outPath, fileName.replace(".MES", ".txt")), 1, "932", verbose=1, debug=1)
# file.disassemble()

for fileName in os.listdir(oriPath):
    # print(f"Processing {fileName}...")
    try:
        if fileName.endswith(".MES"):
            file = AI5WINScript(os.path.join(oriPath, fileName), os.path.join(outPath, fileName.replace(".MES", ".txt")), 1, "932", verbose=0, debug=0)
            file.disassemble()
    except Exception as e:
        print(f"Error processing {fileName}: {e}")
        continue