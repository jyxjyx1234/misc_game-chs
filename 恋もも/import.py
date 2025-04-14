from SPT_FILE import *
from HanziReplacer import *

transpath = "gt_output/"
oripath = "gsp_d/"
outpath = "release_claude37/gsp_trans/"

os.makedirs(outpath, exist_ok=True)

files = os.listdir(transpath)

h = HanziReplacer()
h.ReadTransAndGetHanzidictFromFolder(transpath)
h.ChangeFont("wenquanyi.ttf", "release_claude37/run/remomo.ttf", "remomo")

for file in files:
    transdata = json.load(open(transpath + file, "r", encoding="utf-8"))
    transdict = {}
    for d in transdata:
        trans = d["message"]
        trans = h.hanzitihuan(trans)
        if re.search(r"[a-zA-Z]",trans):
            print(trans)
        trans = replace_halfwidth_with_fullwidth(trans)
        trans = processQuote(trans)
        for char in trans:
            if len(char.encode("932")) == 1:
                print(trans)
                print(char)
        transdict[d["ori"]] = trans
    spt = SPT_FILE(oripath + file.replace(".json", ""))
    spt.trans_text(transdict, outpath + file.replace(".json", ""))


from GSD_GLOBAL_DAT import *
g = GSD_GLOBAL_DAT("gsp_d/global.dat")
namedict = open_json("namedict.json")
for n in namedict:
    namedict[n] = h.hanzitihuan(namedict[n])
g.change_names(namedict)
g.save("release_claude37/gsp_trans/global.dat")

os.system("python SPTCryptor.py release_claude37/gsp_trans -e")
from GSP_pack import *
gsp = GSP_file("data.gsp")
gsp.pack('release_claude37\\gsp_trans_e\\', "release_claude37\\run\\data.gsp")

#os.system("python SPTCryptor.py gsp_d -e")
#gsp.pack("gsp_d_e/", "release/data.gsp")