from Lib import *

pattern = re.compile(r"【.*?】")

namelist = {}

for file in os.listdir("out\\ss_20130724_092434\\"):
    if file.endswith(".ss"):
        data = open("out\\ss_20130724_092434\\" + file, "r", encoding="932").read()
        data = pattern.findall(data)
        for name in data:
            name = name[1:-1]
            if name not in namelist:
                namelist[name] = 0
            namelist[name] += 1

save_json("namelist_.json", namelist)