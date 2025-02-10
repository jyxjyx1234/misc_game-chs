import sys
import json, os

def mtjson2galtansl(jsonfile):
    out = []
    for i in jsonfile:
        dic = {}
        dic["ori"] = i
        dic["message"] = i
        out.append(dic)
    return out

def galtransl2mtjson(jsonfile):
    out = {}
    for dic in jsonfile:
        out[dic["ori"]] = dic["message"]
    return out

def main():
    try:
        mode = sys.argv[1]
        ori_path = sys.argv[2]
        out_path = sys.argv[3]
    except:
        print("Usage: python convert.py <mode> <ori_path> <out_path>")
        print("mode: 1 for mt type json to galtansl, 2 for galtransl type json to mt")
        sys.exit(1)
    os.makedirs(out_path, exist_ok=True)    
    files = os.listdir(ori_path)
    if mode == "1":
        for file in files:
            if not file.endswith(".json"):
                continue
            with open(os.path.join(ori_path, file), "r", encoding="utf8") as f:
                jsonfile = json.load(f)
            out = mtjson2galtansl(jsonfile)
            with open(os.path.join(out_path, file), "w", encoding="utf8") as f:
                json.dump(out, f, indent=4, ensure_ascii=False)
    elif mode == "2":
        for file in files:
            if not file.endswith(".json"):
                continue
            with open(os.path.join(ori_path, file), "r", encoding="utf8") as f:
                jsonfile = json.load(f)
            out = galtransl2mtjson(jsonfile)
            with open(os.path.join(out_path, file), "w", encoding="utf8") as f:
                json.dump(out, f, indent=4, ensure_ascii=False)

if __name__ == "__main__":
    main()