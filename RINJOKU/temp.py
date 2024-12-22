from Lib import *

transdict = open_json("rinjoku_dict.json")
namedict = open_json("namedict.json")

namedict.update(transdict)
save_json("namedict.json",namedict)