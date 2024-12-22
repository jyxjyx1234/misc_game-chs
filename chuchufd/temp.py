from Lib import *

namedict = open_json('namedict.json')
namedict_ = open_json('namedict_.json')

for i in namedict:
    if i in namedict_:
        namedict[i] = namedict_[i]
save_json('namedict.json', namedict)