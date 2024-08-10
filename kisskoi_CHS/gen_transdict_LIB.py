from Lib import *
class people():
    def __init__(self) -> None:
        self.xingjp=""
        self.middlejp=""
        self.mingjp=""
        self.xing=""
        self.middle=""
        self.ming=""
        self.namejp=""
        self.name=""
        self.sex=""
        self.role=""
        self.other=""

class transdict():
    def __init__(self) -> None:
        self.peoples:list[people] = []
        pass

    def addname(self,jp_name:list,chs_name:list,sex='',role='',other='',reverse=False):
        l = len(jp_name)
        p = people()
        namesplitflag = ""
        
        if l == 1 and "＝" in jp_name[0]:
            jp_name = jp_name[0].split("＝")
            chs_name = chs_name[0].split("＝")
            namesplitflag = "＝"
            l = len(jp_name)
        if l == 1 and " " in jp_name[0]:
            jp_name = jp_name[0].split(" ")
            chs_name = chs_name[0].split(" ")
            l = len(jp_name)

        p.namejp = namesplitflag.join(jp_name)
        p.name = namesplitflag.join(chs_name)

        if reverse:#用于处理外国名字
            jp_name.reverse()
            chs_name.reverse()
        
        if l == 1:
            p.namejp = jp_name[0]
            p.name = chs_name[0]
        if l == 2:
            p.xingjp = jp_name[0]
            p.mingjp = jp_name[1]
            p.xing = chs_name[0]
            p.ming = chs_name[1]
        if l == 3:
            p.xingjp = jp_name[0]
            p.mingjp = jp_name[2]
            p.middlejp = jp_name[1]
            p.xing = chs_name[0]
            p.ming = chs_name[2]
            p.middle = chs_name[1]
        p.sex = sex
        p.role = role
        p.other = other
        self.peoples.append(p)

    def gen_dict(self):
        lastnamedict:dict[str:list[people]] = {}
        outlist = []
        for p in self.peoples:
            discribe = ""
            if p.sex !="":
                discribe += f",{p.sex}"
            if p.role !="":
                discribe += f",{p.role}"
            if p.other !="":
                discribe += f",{p.other}"

            if p.xingjp == "":
                out = f'{p.namejp}\t{p.name}\tname{discribe}\n'
                outlist.append(out)

            if p.xingjp != "":
                if p.xingjp not in lastnamedict:
                    lastnamedict[p.xingjp] = [p]
                else:
                    lastnamedict[p.xingjp].append(p)
        
        for x in lastnamedict:
            x_chs = lastnamedict[x][0].xing
            nameslist = []

            for p in lastnamedict[x]:
                #输出名字
                discribe = f""
                if p.sex !="":
                    discribe += f",{p.sex}"
                if p.role !="":
                    discribe += f",{p.role}"
                if p.other !="":
                    discribe += f",{p.other}"
                discribe = discribe[1:]

                outlist.append(f"{p.mingjp}\t{p.ming}\tfirst name of {p.namejp},{discribe}\n")

                if p.middle!="":
                    outlist.append(f"{p.middlejp}\t{p.middle}\tmiddle name of {p.namejp},{discribe}\n")

                nameslist.append(f"{p.namejp}({discribe})")
            
            namesout = " and ".join(nameslist)
            xingoutput = f"{x}\t{x_chs}\tlastname of {namesout}\n"
            outlist.append(xingoutput)

        self.outlist = outlist
        print("".join(outlist))
    
    def savetxt(self,path):
        f = open(path,'w',encoding='utf8')
        for i in self.outlist:
            f.write(i)
    
    def savejson(self,path):
        j = {}
        for l in self.outlist:
            l = l.split("\t")
            j[l[0]] = l[1]
        for p in self.peoples:
            j[p.namejp]=p.name
        save_json(path,j)