from Lib import *

class MESContent:
    def __init__(self):
        pass

    def readFromLines(self, head, content):
        self.type = head.strip("\n")
        self.content_text = head + content
        if content == "":
            self.content = ""
        else:
            self.content = json.loads(content)

def split_mestxt(lines):
    i = 0
    headBuffer = ""
    contentBuffer = []
    mescontents = []
    while True:
        if lines[i].startswith("#"):
            c = MESContent()
            c.readFromLines(headBuffer, "".join(contentBuffer))
            mescontents.append(c)
            headBuffer = lines[i]
            contentBuffer = []
        else:
            contentBuffer.append(lines[i])
        i += 1
        if i >= len(lines):
            c = MESContent()
            c.readFromLines(headBuffer, "".join(contentBuffer))
            mescontents.append(c)
            break
    return mescontents

if __name__ == "__main__":

    oriPath = "DEC"
    outPath = "gt_input"
    os.makedirs(outPath, exist_ok=True)

    itemset = set()

    info = StatusInfo()

    isForceName = True

    if isForceName:
        namedict = open_json("namedict.json")
    else:
        namedict = {}


    def save_filter(dic):
        msg = dic["message"]
        for m in re.finditer("『(.*?)』", msg):
            itemset.add(m.group(1))
        if re.match(r"^[0-9a-zA-Z\._ -]*$", msg):
            return False
        if "「" in msg and msg.endswith("」"):
            name, msg_ = msg.split("「", 1)
            msg_ = "「" + msg_
            if name in namedict or not isForceName:
                dic["name"] = name
                dic["ori"] = msg_
                dic["message"] = msg_
                namedict[name] = name
        elif "『" in msg and msg.endswith("』"):
            name, msg_ = msg.split("『", 1)
            msg_ = "『" + msg_
            if (name in namedict or not isForceName) and name:
                dic["name"] = name
                dic["ori"] = msg_
                dic["message"] = msg_
                namedict[name] = name
        sorted_dic = dict(sorted(dic.items(), reverse=True))
        dic.clear()
        dic.update(sorted_dic)
        return True

    for fileName in os.listdir(oriPath):
        out = OriJsonOutput()
        out.savefilter = save_filter
        with open(os.path.join(oriPath, fileName), "r", encoding="932") as f:
            lines = f.readlines()
        
        mescontents = split_mestxt(lines)
        
        for idx, mescontent in enumerate(mescontents):
            if mescontent.type == "#1-TEXT":
                text = mescontent.content[0]
                out.add_text(text)
                out.add_idx(idx)
            elif mescontent.type == "#1-INTERRUPT":
                out.wait_for_next_text = True
            elif mescontent.type == "#1-UNK_0F":
                try:
                    if len(mescontent.content) == 1 and len(mescontent.content[0]) == 3 and len(mescontent.content[0][2]) == 1 and len(mescontent.content[0][2][0]) == 5:
                        spidx = mescontent.content[0][2][0][2]
                        if spidx in [4, 7, 40, 41]:
                            if spidx == 7:
                                out.add_text("……")
                            else:
                                out.add_text(f"[name{spidx}]")
                            out.add_idx(idx)
                        else:
                            out.append_dict()
                    else:
                        raise ValueError("Unexpected content format")
                except Exception:
                    print(f"Unknown content in {fileName} at index {idx}: {mescontent.content}")
                    print(len(mescontent.content))
                    print(len(mescontent.content[0]))
                    print(len(mescontent.content[0][2]))
                    print(len(mescontent.content[0][2][0]))
            else:
                out.append_dict()
        
        out.save_json(os.path.join(outPath, fileName.replace(".txt", ".json")))
        info.update(out)

    info.output(0) 
    if not isForceName:
        save_json("namedict.json", namedict)
            
    save_json("itemset.json", list(itemset))
