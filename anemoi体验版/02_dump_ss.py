from LIB.Lib import *
from LIB.SS_FILE import *

unpacked_ss_path = "unpacked_scene"
# unpacked_ss_path = "rebuild_scene"
output_strs_path = "gt_input"

# 部分文件无法完成自动文本分类，只会进行简单的筛选文本，可能需要手动处理
not_process_str_output_path = "手动处理文本"
# 此文件夹内的文本手动处理后，再复制到译文文件夹内
# 理论上大部分情况下不会遇到这种事情

# 运行此脚本还会在根目录生成一个namedict.json文件，包含所有的人名。参考这个可以写人名字典用于AI翻译。
# 小知识：脚本中的人名需要在gameexe.ini中修改，搜索类似这样的文本：
# #NAMAE = "蒼汰",		    "苍汰"	,1, 000,-1
# 这里的第一列为脚本中的人名，不要改；第二列为显示的人名，把这里改为翻译后的人名。

# 特殊文本代码
# 获取方法：先运行一次，在运行后会生成一个not_translated_strings.json文件，里面包含了每个特征码对应的文本。自行判断各个特征码的文本是否需要翻译。
special_text_code = [ 83, 37, 74, 92, 2113929255, 76, 2113929782,2113929817,38]
# 示例：
# special_text_code = [74, 2113929262, 2113929477, 83, 92, ]

# 如果发现因为翻译到了不该翻译的东西导致游戏报错，请来这里检查，是否包含了不该翻译的特征码。
# 第一次运行的时候，建议先给special_text_code清空，然后再检查not_translated_strings.json文件一个个加回去，以免在不知情的情况下提取到了不能翻译的文本。

# 游戏中会有注音，这里同一做删除处理。需要定位到ruby文本
# 同样，在not_translated_strings.json文件中，可以找到注音的文本的特征码
ruby_code = [61, ]

# 如果发现提取到了奇奇怪怪的文本，比如类似
# 確認用あああああああああああ
# 这种是游戏厂商内部测试时候用的文本，修改或者不修改这些文本都不会有影响，可以不管他（

not_trans_string_list = []

os.makedirs(output_strs_path, exist_ok=True)
os.makedirs(not_process_str_output_path, exist_ok=True)
def isPushString(opcode):
    return opcode["opname"] == "CD_PUSH" and opcode["args"][0] == "TYPE_STRING"

def isName(opcode):
    return opcode["opname"] == "CD_NAME"

def isText(opcode):
    return opcode["opname"] == "CD_TEXT"

def isCommand(opcode):
    return opcode["opname"] == "CD_COMMAND"

def isELMPoint(opcode):
    if opcode["opname"] == "CD_ELM_POINT":
        return True
    return False

def isNL(opcode):
    if opcode["opname"] == "CD_NL":
        return opcode["args"][0]
    return None

def isPushInt(opcode):
    if opcode["opname"] == "CD_PUSH" and opcode["args"][0] == "TYPE_INT":
        return opcode["args"][1]
    return None

def filter_string(string_data):
    if "_" in string_data or all(ord(c) < 128 for c in string_data):
        return False
    return True

info = StatusInfo()

for filename in os.listdir(unpacked_ss_path):
    ss = SS_File(os.path.join(unpacked_ss_path, filename))
    ss.code_data = None
    try:
        ss.parse_code_data()
        # 测试用
        os.makedirs("ss_opcodes", exist_ok=True)
        ss.code_data.save_opcodes(os.path.join("ss_opcodes", filename + ".txt"))
    except Exception as e:
        print(f"Error parsing {filename}: {e}. 请检查{not_process_str_output_path}文件夹。如果里面没有文件，说明不包含文本，否则请手动处理这些文件中的文本。")
    out = OriJsonOutput()
    if ss.code_data is not None:
        opcodes = ss.code_data.opcodes
        current_line = 0
        current_elm_point = None
        get_elm_flag = False
        for idx, opcode in enumerate(opcodes):
            if get_elm_flag:
                if isPushInt(opcode) is not None:
                    current_elm_point = isPushInt(opcode)
                    get_elm_flag = False
            if isCommand(opcode):
                current_elm_point = None
            if current_elm_point in special_text_code:
                out.append_dict()
                if isPushString(opcode):
                    string_data, stirng_idx = opcode["args"][1]
                    if filter_string(string_data) is False:
                        continue
                    out.add_text(string_data)
                    out.dic["text_idx"] = out.dic.get("text_idx", []) + [stirng_idx]
                    out.dic["special_code"] = current_elm_point
                    out.append_dict()
                continue
            if current_elm_point in ruby_code:
                if isPushString(opcode):
                    string_data, stirng_idx = opcode["args"][1]
                    out.dic["ruby_idx"] = out.dic.get("ruby_idx", []) + [stirng_idx]
                continue
            if isPushString(opcode):
                string_data, stirng_idx = opcode["args"][1]
                next_opcode = opcodes[idx + 1]
                if isName(next_opcode):
                    out.add_name(string_data)
                    out.dic["name_idx"] = stirng_idx
                elif isText(next_opcode):
                    out.add_text(string_data)
                    out.dic["text_idx"] = out.dic.get("text_idx", []) + [stirng_idx]
                    # out.dic["current_line"] = current_line
                else:
                    if filter_string(string_data):
                        not_trans_string_list.append((string_data, current_elm_point))

            if isNL(opcode) and isNL(opcode) != current_line:
                out.append_dict()
                current_line = isNL(opcode)
            
            if isELMPoint(opcode):
                get_elm_flag = True

        out.save_json(os.path.join(output_strs_path, filename + ".json"))
        info.update(out)
    else:
        strings = ss.str_list.strings
        for idx, string_data in enumerate(strings):
            filtered_string = filter_string(string_data)
            if filtered_string:
                out.add_text(string_data)
                out.dic["text_idx"] = out.dic.get("text_idx", []) + [idx]
                out.append_dict()
        out.save_json(os.path.join(not_process_str_output_path, filename + ".json"))
        info.update(out)

info.output(1)

not_trans_dict = {}
for s, code in not_trans_string_list:
    if not code:
        continue
    if code not in not_trans_dict:
        not_trans_dict[code] = []
    not_trans_dict[code].append(s)
save_json("not_translated_strings.json", not_trans_dict)        
