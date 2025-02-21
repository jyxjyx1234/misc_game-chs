from Lib import *

class PAGE_LIST_CONTENT:
    def __init__(self, data):
        self.data = data
        self.code = data.get("code", None)
        self.parameters = data.get("parameters", None)

class DATABASE_CONTENT:
    def __init__(self, data):
        self.data = data
    
    def get_parameter(self, key):
        if key in self.data:
            return self.data[key]
        return None
    
    def get_parameters(self, keys):
        '''
        可能有文本的地方：name，nickname，description
        '''
        result = {}
        for key in keys:
            if key in self.data:
                result[key] = self.data[key]
        return result
    
    def trans_parameter(self, key, value):
        if key in self.data:
            self.data[key] = value

def read_map_file(file_path): # 只关注events里的pages里的list
    data = open_json(file_path)
    contents = []
    if "events" not in data:
        return None
    for event in data["events"]:
        if type(event) != dict:
            continue
        if "pages" not in event:
            continue
        for page in event["pages"]:
            if "list" not in page:
                continue
            for content in page["list"]:
                contents.append(PAGE_LIST_CONTENT(content))
    return contents     

def read_CommonEvents_file(file_path):
    data = open_json(file_path)
    contents = []
    for event in data:
        if type(event) != dict:
            continue
        if "list" not in event:
            continue
        for content in event["list"]:
            contents.append(PAGE_LIST_CONTENT(content))
    return contents

def read_database_file(file_path):
    data = open_json(file_path)
    contents = []
    for table in data:
        contents.append(DATABASE_CONTENT(table))
    return contents

def get_code_info(oripath, outpath):
    # 测试用
    res = {}
    for file in os.listdir(oripath):
        if not file.endswith(".json"):
            continue
        if not file.startswith("Map"):
            continue
        contents = read_map_file(os.path.join(oripath, file))
        for content in contents:
            if content.code not in res:
                res[content.code] = []
            res[content.code].append(content.parameters)