from Lib import *
from ScriptFile import *



if __name__ == "__main__":
    scrf = ScriptPackFile("ScriptFile.dat", "Script.dat")
    scrf.unpackToFolder("ScriptUnpacked")

    strf = StringBufferFile("StringIndex.dat", "StringBuffer.dat")
    strings = strf.get_strings()
    with open("strings.txt", 'w', encoding='utf-8') as f:
        for i, s in enumerate(strings):
            f.write(f"{i}: {s}\n")
    stringStatus = set()
    opStatus = {}
    for file in scrf.scriptFiles:
        filename = file["filename"]
        data = file["data"]
        scriptfile = ScriptFile(BytesReaderBE(data), strings, filename)
        scriptfile.to_Text(outPath=os.path.join("ScriptDisasm", filename + ".txt"))
        stringStatus.update(scriptfile.string_Status)
        for op in scriptfile.opStatus:
            if op not in opStatus:
                opStatus[op] = scriptfile.opStatus[op]
            else:
                opStatus[op] += scriptfile.opStatus[op]
    for idx in range(len(strings)):
        if idx not in stringStatus:
            logging.warning(f"String index {idx} not used in any script file: {strings[idx]}")

    save_json("opStatus.json", opStatus)
    # scriptdata = open_file_b("Script.dat")
    # scriptdata = bytes([i ^ 0xFF for i in scriptdata])
    # scriptfile = ScriptFile(BytesReaderBE(scriptdata), strings)
    # scriptfile.to_Text(outPath="Script.dat.txt")
