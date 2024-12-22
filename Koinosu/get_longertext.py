longerlist=[235,238,1350,1428,1542,1803,2149,2478,2726,3227,3754,4144,5266,5698,5737,5939,6257,6734,7105,7568,8288,8707,8765,8996,10139,10239,10423,10527,10551,10989,11166,11225,11290,11309,11321,11552,11593,11677,11736,12854,12866,12925,13169,13591,13659,13688,13876,14243,14291,14440,14692,14743,14980,15006,15303,15325,15645,15738,15856,16546,16557,16619,17040,17087,17347,17627,18339,18996,19831,19938,20004,20383,20433,20494,20497,20553,20899,21232,21484,21520,21662,21814,21898,22285,22343,22782,23044,23365,23376,23904,24494,24504,25231,25237,25239,25319,25401,26025,26279,26553,26924,27075,27110,27340,27346,27402,27420,27661,28591,29771,29823,30088,30184,30574,30822,30843,31242,31272,31983,32448,32502,32518,32538,32942,32957]

import re,json

trans_file=json.load(open("译文.json","r",encoding='utf8'))

longerlist_=[]

def add_to_list(item,lis):
    if item not in lis:
        lis.append(item)
    return lis.copy()

for i in longerlist:
    longerlist_=add_to_list(i,longerlist_)
    longerlist_=add_to_list(i-1,longerlist_)
    longerlist_=add_to_list(i+1,longerlist_)

longerlist_.sort()

out=[]
for i in longerlist_:
    dic=trans_file[i]
    dic_={}
    if dic['name']!='':
        dic_['name']=dic['name']
    dic_['message']=dic["pre_jp"]
    out.append(dic_)

json.dump(out,open('longer.json','w',encoding='utf8'),ensure_ascii=False,indent=4)