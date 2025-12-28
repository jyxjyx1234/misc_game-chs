from Lib import *

oridict = open_json("tips_dict copy.json")

print("%[")
for key in oridict:
    print(f'{key}: "{oridict[key]}",')
print("]")