from Lib import *

texts = open_json("SD_FILE.json")
os.makedirs("gt_input", exist_ok=True)
special_text = []
exe_special_text = []   
processed_text = []
exe_processed_text = []

for text in texts:
    if "@" in text["message"]:
        special_text.append(text)
    else:
        processed_text.append(text)

# exe_text = open_json("exe_text.json")
# for text in exe_text:
#     if "%" in text["message"]:
#         exe_special_text.append(text)
#     else:
#         exe_processed_text.append(text)

save_json(os.path.join("gt_input", "special_text.json"), special_text)
save_json(os.path.join("gt_input", "processed_text.json"), processed_text)
# save_json(os.path.join("gt_input", "exe_special_text.json"), exe_special_text)
# save_json(os.path.join("gt_input", "exe_processed_text.json"), exe_processed_text)

opts = open_json("SD_FILE_opt.json")
processed_opt = []
quchong_set = set()
for opt in opts:
    if opt["message"] not in quchong_set:
        quchong_set.add(opt["message"])
        processed_opt.append(opt)
save_json(os.path.join("gt_input", "processed_opt.json"), processed_opt)
