from Lib import *
from GalTranslCache import *


transfile = GalTranslCache()

transfile.read_from_json("yiwen.json",open_json("names.json"))
transfile.set_format("%n&「%m&」")
transfile.replace_ori(open_json("oris.json"))
transfile.save_trans_data("blueBox版/trans.dat","sjis","gbk",True)