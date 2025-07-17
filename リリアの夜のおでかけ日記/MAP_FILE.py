from Lib import *

database_keys = ["name", "nickname", "description", "displayName", "message1", "message2", "note"]

class PAGE_LIST_CONTENT:
    def __init__(self, data, path):
        self.data = data
        self.path = path
        self.code = data.get("code", None)
        self.parameters = data.get("parameters", None)

    def process_parameters(self):
        if self.code == 101:
            return self.process_101()
        elif self.code == 102:
            return self.process_102()
        elif self.code == 401:
            return self.process_401()
        elif self.code == 402:
            return self.process_402()
        else:
            return self.process_others_code()
        return []
    
    def process_others_code(self):
        res = [{"code" : self.code}]
        return res
    
    def process_101(self):
        path = self.path.copy()
        path.append("parameters")
        path.append(len(self.parameters) - 1)
        res = [{"ori": self.parameters[-1], "path" : path, "code" : self.code}]
        return res

    def process_102(self):
        path = self.path.copy()
        path.append("parameters")
        path.append(0)
        path.append(-1)
        res = []
        for i in self.parameters[0]:
            path[-1] += 1
            if i:
                res.append({"ori" : i, "path" : path.copy(), "code" : self.code})
        return res
    
    def process_401(self):
        path = self.path.copy()
        path.append("parameters")
        path.append(0)
        res = []
        if self.parameters[0]:
            res = [{"ori" : self.parameters[0], "path" : path, "code" : self.code}]
        return res
    
    def process_402(self):
        path = self.path.copy()
        path.append("parameters")
        path.append(1)
        res = []
        if self.parameters[1]:
            res = [{"ori" : self.parameters[1], "path" : path, "code" : self.code}]
        return res

class DATABASE_CONTENT:
    def __init__(self, data, path):
        self.data = data
        self.path = path
    
    def get_parameter(self, key):
        if key in self.data:
            return self.data[key]
        return None
    
    def get_parameters(self):
        result = {}
        if not self.data:
            return result
        try:
            for key in self.data:
                if self.data[key] != "":
                    result[key] = self.data[key]
        except:
            print(self.data)
        return result
    
    def process_parameters(self):
        '''
        可能有文本的地方：name，nickname，description
        '''
        keys = database_keys
        res = []
        for key in keys:
            if self.data and key in self.data and self.data[key] != "":
                path = self.path.copy()
                path.append(key)
                res.append({"ori" : self.data[key], "path" : path})
        return res

class SYSTEM_CONTENT:
    def __init__(self, data, path):
        self.data = data
        self.path = path

    def process_parameters(self):
        res = []
        res += self.get_list_key("skillTypes")
        res += self.get_list_key("equipTypes")
        res += self.get_list_key("weaponTypes")
        res += self.get_list_key("elements")
        res += self.get_list_key("armorTypes")
        res += self.get_list_key("switches")
        res += self.get_list_key("variables")
        res += self.get_terms()
        return res
    
    def get_list_key(self, key):
        # variables, switches
        res = []
        path = self.path.copy()
        path.append(key)
        path.append(-1)
        for i in self.data[key]:
            path[-1] += 1
            if i:
                res.append({"ori" : i, "path" : path.copy()})
        return res
    
    def get_terms(self):
        res = []
        path = self.path.copy()
        path.append("terms")
        for key in self.data["terms"]:
            path.append(key)
            if type(self.data["terms"][key]) == list:
                path.append(-1)
                for i in self.data["terms"][key]:
                    path[-1] += 1
                    if i:
                        res.append({"ori" : i, "path" : path.copy()})
                path.pop()
            if type(self.data["terms"][key]) == dict:
                for k in self.data["terms"][key]:
                    path.append(k)
                    if self.data["terms"][key][k]:
                        res.append({"ori" : self.data["terms"][key][k], "path" : path.copy()})
                    path.pop()
            path.pop()
        return res

class MAP_FILE:
    def __init__(self, file_path): # 只关注events里的pages里的list
        self.file_path = file_path
        self.data = open_json(file_path)
        self.contents = []
        path = [file_path]
        self.contents.append(DATABASE_CONTENT(self.data, path.copy()))
        if "events" not in self.data:
            return
        path.append("events")
        path.append(-1)
        for event in self.data["events"]:
            path[-1] += 1
            if type(event) != dict:
                continue
            if "pages" not in event:
                continue
            path.append("pages")
            path.append(-1)
            for page in event["pages"]:
                path[-1] += 1
                if "list" not in page:
                    continue
                path.append("list")
                path.append(-1)
                for content in page["list"]:
                    path[-1] += 1
                    self.contents.append(PAGE_LIST_CONTENT(content, path.copy()))
                path.pop()
                path.pop()
            path.pop()
            path.pop()
        path.pop()
        path.pop()

class COMMONEVENTS_FILE:
    def __init__(self, file_path):
        self.file_path = file_path
        self.data = open_json(file_path)
        self.contents = []
        path = [file_path]
        path.append(-1)
        for event in self.data:
            path[-1] += 1
            if type(event) != dict:
                continue
            if "list" not in event:
                continue
            path.append("list")
            path.append(-1)
            for content in event["list"]:
                path[-1] += 1
                self.contents.append(PAGE_LIST_CONTENT(content, path.copy()))
            path.pop()
            path.pop()
        path.pop()

class DATABASE_FILE:
    def __init__(self, file_path):
        self.file_path = file_path
        self.data = open_json(file_path)
        self.contents = []
        path = [file_path]
        path.append(-1)
        for table in self.data:
            path[-1] += 1
            self.contents.append(DATABASE_CONTENT(table, path.copy()))
        path.pop()

class SYSTEM_FILE:
    def __init__(self, file_path):
        self.file_path = file_path
        self.data = open_json(file_path)
        self.contents = []
        path = [file_path]
        self.contents.append(SYSTEM_CONTENT(self.data, path.copy()))
        path.pop()

def test_dump(oripath, outpath):
    # 分类dump所有的文本
    os.makedirs(outpath, exist_ok=True)
    res = {}
    for file in os.listdir(oripath):
        if not file.endswith(".json"):
            continue
        if not file.startswith("Map"):
            if not file.startswith("CommonEvents"):
                dbf = DATABASE_FILE(os.path.join
                (oripath, file))
                for content in dbf.contents:
                    parameters = content.get_parameters()
                    for key in parameters:
                        if key not in res:
                            res[key] = []
                        res[key].append({"content" : parameters[key], "path" : content.path})
                continue
            cef = COMMONEVENTS_FILE(os.path.join(oripath, file))
            contents = cef.contents
        else:
            mpf = MAP_FILE(os.path.join(oripath, file))
            contents = mpf.contents
        if contents is None:
            continue
        for content in contents:
            if content.code not in res:
                res[content.code] = []
            res[content.code].append({"content" : content.parameters, "path" : content.path + ["parameters"]})
    
    for i in [102, 401, 402, "description", "name"]:
        save_json(os.path.join(outpath, f"{i}.json"), res[i])

if __name__ == "__main__":
    test_dump("data", "temp")