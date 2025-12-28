from Lib import *

namepattern = re.compile(r"【.*?】")
callpattern = re.compile(r'farcall\("(.*?)"')
callpattern2 = re.compile(r'jump\("(.*?)"')
rubypattern = re.compile(r'ruby\("(.*?)"')
rubypattern2 = re.compile(r'ruby\(([^"]*?)\)')
todopattern = re.compile(r'@todo\("(.*?)"')

namelist = {}
nottranslist = {}
rubylist = {}

for file in os.listdir("ss_20251023_105255\\"):
    if file.endswith(".ss") or file.endswith(".inc"):
        data = open("ss_20251023_105255\\" + file, "r", encoding="932").read()
        m = namepattern.findall(data)
        for name in m:
            name = name[1:-1]
            if name not in namelist:
                namelist[name] = 0
            namelist[name] += 1
        m = callpattern.findall(data)
        for t in m:
            nottranslist[t] = ""

        m = callpattern2.findall(data)
        for t in m:
            nottranslist[t] = ""
        m = todopattern.findall(data)
        for t in m:
            nottranslist[t] = ""
        
        m = rubypattern.findall(data)
        for t in m:
            rubylist[t] = ""

        
        m = rubypattern2.findall(data)
        for t in m:
            rubylist[t] = ""


save_json("namelist_.json", namelist)
try:
    oriNotTransList = open_json("nottranslist.json")
except:
    oriNotTransList = {}
oriNotTransList.update(nottranslist)
save_json("nottranslist.json", oriNotTransList)

try:
    oriRubyList = open_json("rubylist.json")
except:
    oriRubyList = {}
oriRubyList.update(rubylist)
save_json("rubylist.json", oriRubyList)
