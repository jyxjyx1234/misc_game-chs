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

    def save_filter(dic):
        msg = dic["message"]
        # for m in re.finditer("『(.*?)』", msg):
        #     itemset.add(m.group(1))
        if re.match(r"^[0-9a-zA-Z\._ -]*$", msg):
            del dic["message"]
            del dic["idx"]
            return False
        # elif msg.count("【") == 1 and msg.count("】") == 1:
        #     name , msg = msg.split("】")
        #     name = name[1:]
        #     out.dic["name"] = name
        #     out.dic["message"] = msg
        # elif msg.count("【") > 1 or msg.count("】") > 1 or msg.count("【") != msg.count("】"):
        #     print(f"Invalid message format: {msg}")
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
            elif mescontent.type == "#1-UNK_0F":
                try:
                    if len(mescontent.content) == 1 and len(mescontent.content[0]) == 3 and len(mescontent.content[0][2]) == 1 and len(mescontent.content[0][2][0]) == 5:
                        spidx = mescontent.content[0][2][0][2]
                        if spidx in [4]:
                            if spidx == 4:
                                out.move_msg_to_name()
                                out.dic["name"] = out.dic["name"].strip("\u3000")
                            else:
                                out.add_text(f"[sp{spidx}]")
                                out.add_idx(idx)
                        else:
                            out.append_dict()
                        # out.add_text(f"[name{spidx}]")
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
            
    # save_json("itemset.json", list(itemset))
