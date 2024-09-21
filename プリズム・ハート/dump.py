from Lib import *
import os, re

msgPatten = re.compile(rb"(?<=\x90[\x11\x12\x23\x24\x25\x26\x28])(?P<msg>[\x01-\xff]{2,}?)(?=\x00)|(?<=\x90[\x11\x23\x24\x25\x26\x28]\x05\x00)(?P<msg2>[\x01-\xff]{2,})(?=\x00)|(?<=\x90\x05)(?P<selection>[\x01-\xff]+?)\x00\x86(?P<jump>[\x00-\xff]{4})|(?<=\x86)(?P<jump2>[\x00-\xff]{3}\x00)")

def preProcessMsg(msg : bytes) -> str:
    '''
    预处理，处理注音（{.|.}）
    '''
    msg = re.sub(rb"[\x01-\x10][\x01-\xff]", b"", msg)
    msg = msg.decode("932")
    msg = re.sub(r"{(.*?)\|.*?}", lambda x : x.group(1), msg)
    return msg

def MSGread(text:str, out:OriJsonOutput) -> None:
    if "【" in text:
        name, msg = text.split("】")
        name = name[1:].strip()
        out.dic["name"] = name
    else:
        msg = text
    out.dic["message"] = msg
    out.append_dict(quchong=False)
    

oriPath = "ori_adv\\"
txtOutPath = "oriTXT\\"
jsonOutPath = "gt_input\\"

namedict = {}

fileNames = os.listdir(oriPath)

for fileName in fileNames:
    oriFile = open_file_b(oriPath + fileName)
    OFFSET = from_bytes(oriFile[0x14:0x18])
    oriFileData = oriFile[OFFSET:]
    outOriTXT = open(txtOutPath + fileName.replace(".adv", ".txt"), "w", encoding = "utf8")
    outOriJsonFilePath = jsonOutPath + fileName.replace(".adv", ".json")
    out = OriJsonOutput()

    matches = msgPatten.finditer(oriFileData)
    for match in matches:
        '''
        $$start-end::文本
        !!start-end::jump
        '''
        if match.group("msg") or match.group("msg2"):
            startOffset = match.start()
            endOffset = match.end()
            msgBytes = oriFileData[startOffset:endOffset]
            if re.match(rb"[\x01-\x10]", msgBytes[-1:]):
                if not re.match(rb"[\x01-\x10]", msgBytes[-2:-1]): 
                    msgBytes = msgBytes[:-1]
                    while True:
                        endOffset += 1 
                        if oriFileData[endOffset] != 0:
                            msgBytes = msgBytes + oriFileData[endOffset:endOffset+1]
                        else:
                            if re.match(rb"[\x01-\x10]", msgBytes[-1:]):
                                msgBytes = msgBytes[:-1]
                            else:
                                break
            msg = preProcessMsg(msgBytes)
            MSGread(msg, out)
            outOriTXT.write(f"$${startOffset}-{endOffset}::{msg}\n")
        if match.group("selection"):
            selectionStartOffset = match.start()
            selectionEndOffset = selectionStartOffset + len(match.group("selection"))
            msgBytes = match.group("selection")
            msg = preProcessMsg(msgBytes)
            MSGread(msg, out)
            outOriTXT.write(f"$${selectionStartOffset}-{selectionEndOffset}::{msg}\n")
            jumpStartOffset = selectionEndOffset + 2
            jumpEndOffset = jumpStartOffset + 4
            jumpToOffset = from_bytes(match.group("jump"))
            outOriTXT.write(f"!!{jumpStartOffset}-{jumpEndOffset}::{jumpToOffset}\n")
        if match.group("jump2"):
            jumpStartOffset = match.start()
            jumpEndOffset = match.end()
            jumpToOffset = from_bytes(match.group("jump2"))
            if oriFileData[jumpStartOffset - 2] not in [0x00, 0x10, 0x2b]:
                if oriFileData[jumpStartOffset - 2] not in [0x00, 0x10, 0x2b, 0x83]:
                    print(oriFileData[jumpStartOffset - 2])
                    print(fileName)
                    print(hex(OFFSET + jumpStartOffset))
                    print()
                continue
            if jumpToOffset > len(oriFileData):
                print(oriFileData[jumpStartOffset - 2])
                print(fileName)
                print(hex(OFFSET + jumpStartOffset))
                print()
                pass

            outOriTXT.write(f"!!{jumpStartOffset}-{jumpEndOffset}::{jumpToOffset}\n")
                #print(oriFileData[jumpStartOffset - 2])
                #print(fileName)
                #print(OFFSET + jumpStartOffset)
                #print()
            
    out.save_json(outOriJsonFilePath)
    namedict.update(out.get_names())

save_json("namedict.json",namedict)