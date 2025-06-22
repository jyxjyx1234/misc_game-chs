from Lib import *
import xml.etree.ElementTree as ET

oriPath = "Script"
transPath = "gt_output"
outPath = "release\\script"
os.makedirs(outPath, exist_ok=True)

namedict = open_json("namedict.json")

for file in os.listdir(oriPath):
    try:
        transdatas = open_json(os.path.join(transPath, file + ".json"))
        print(f"Translating {file}...")
    except FileNotFoundError:
        transdatas = []

    data = open_file_b(os.path.join(oriPath, file)).decode("utf8")
    
    def translate_text(match):
        ori_data = match.group(0)
        if match.group("msg"):
            oriname = match.group("name")
            if oriname:
                if oriname in namedict:
                    newname = namedict[oriname]
                    ori_data = ori_data.replace(f'name="{oriname}"', f'name="{newname}"')
                else:
                    print(f"Warning: {oriname} not found in namedict.json, treat as simple text.")
                    transtext = transdatas.pop(0)["message"]
                    ori_data = ori_data.replace(f'name="{oriname}"', f'name="{transtext}"')
            msg = match.group("msg")
            if msg:
                transtext = transdatas.pop(0)["message"]
                ori_data = ori_data.replace(f'text="{msg}"', f'text="{transtext}"')
        elif match.group("select"):
            transtext = transdatas.pop(0)["message"]
            oritext = match.group("select")
            ori_data = ori_data.replace(f'text="{oritext}"', f'text="{transtext}"')
        elif match.group("description"):
            transtext = transdatas.pop(0)["message"]
            oritext = match.group("description")
            ori_data = ori_data.replace(f'text="{oritext}"', f'text="{transtext}"')
        return ori_data
    
    newdata = re.sub(r'<msg.*?name="(?P<name>.*?)".*?text="(?P<msg>.*?)".*?/>|<menu.*?text="(?P<select>.*?)".*?/>|<description.*?text="(?P<description>.*?)".*?/>', translate_text, data, flags=re.DOTALL)
    newdata = newdata.replace("\r", "").replace("\n", "").replace("\t", "")
    newdata = newdata.encode("utf8")
    oridata_len = len(open_file_b(os.path.join(oriPath, file)))
    if len(newdata) > oridata_len:
        raise ValueError(f"Translation for {file} is longer than original data. Original length: {oridata_len}, New length: {len(newdata)}")
    newdata = newdata + b"\t" * (oridata_len - len(newdata))
    save_file_b(os.path.join(outPath, file), newdata)
    if len(transdatas) > 0:
        print(f"Warning: {file} has unused translation data: {transdatas}")
        raise ValueError(f"Unused translation data found in {file}. Please check the translation file.")
os.system("cd release && pack.bat")