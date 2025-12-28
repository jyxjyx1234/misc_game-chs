from Lib import *
from openai import OpenAI
import logging
import threading
from concurrent.futures import ThreadPoolExecutor, as_completed

logging.basicConfig(level=logging.INFO, format="", filemode = "a", filename = "gen_dict.log")

api_key = "sk-aBc4RXBdrBFDAhgTewlQtZxRD4vgvPCtUStJbOyc1gm7H6vo"
base_url = "https://xianyi.zeabur.app/v1/"
model_name = "deepseek-ai/DeepSeek-V3.2"
try:
    output_data = open_json("autodict.json")
except FileNotFoundError:
    output_data = {
        "used_files": [],
        "dict": {}
    }

GENDIC_PROMPT="""## 任务
从输入的日文小说对话片段中构建用于日译中的术语表，术语表主要包括足够独特的专有名词，例如只在这部小说中出现的人名/地名/建筑/招牌/特殊物品/招式技能/奖项/菜肴……等，
* 不包括任何生活常见、翻译已经约定俗成的专有名词，例如渋谷、沖縄等。

## 输出要求
你的输出包括日文、对应中文、备注
其中日文为对应原文
中文为你对这个词的翻译
备注为这个专有名词的类型，如果是人名的话，还要推测性别；如果推测一个姓氏对应了多个人，请在备注中注明。

1. 你的输出使用TSV格式，且总是先输出以下表头：
```tsv
日文原词	中文翻译	备注

2. 开始输出词表
+ 如果有专有名词，则开始输出词表，每个元素之间使用Tab分隔，例如
张三	张三	人名，男性

+ 如果输入的文本中没有任何专有名词，那么输出一行
NULL	NULL	NULL

3. 然后直接停止输出，不需要任何其他解释或说明。

【HINT】


## 输出格式（禁止输出其他任何内容）
```tsv
日文原词	中文翻译	备注
"""

def process_output(output: str):
    lines = output.strip().split("\n")
    result = {}
    warning_count = 0
    for line in lines:  # Skip header
        if line.startswith("```"):
            continue
        if line.strip() == "日文原词	中文翻译	备注":
            continue
        if line.strip() == "NULL\tNULL\tNULL":
            return []
        parts = line.split("\t")
        if len(parts) == 3:
            result[parts[0]] = {
                "chinese": parts[1],
                "remark": parts[2]
            }
        elif len(parts) != 1 and len(parts) != 3:
            logging.error(f"Error: {line}")
            raise ValueError("Unexpected line format")
        else:
            logging.warning(f"Warning: {line}")
            warning_count += 1
            if warning_count >= 5:
                raise ValueError("Too many warnings in output")
    return result

def gen_input(path):
    global GENDIC_PROMPT, output_data
    oridata = open_json(path)
    res = []
    for i in range(0, len(oridata), 500):
        data = oridata[i:i+500]
        input_text = []
        for item in data:
            if "name" in item:
                input_text.append(item["name"] + "：")
            if "filename" in item and not item["filename"].endswith(".txt"):
                input_text.append(item['filename'])
            input_text.append(item["message"])
        input = "\n".join(input_text)
        sysprom = GENDIC_PROMPT
        hints = []
        for text in output_data["dict"]:
            if text not in input:
                continue
            jp = text
            cn = output_data["dict"][text]["chinese"]
            remark = output_data["dict"][text]["remark"]
            hints.append(f"{jp}\t{cn}\t{remark}")
        hints = "\n".join(hints)
        if hints:
            hints = f"## 提示：以下是已有的术语表，翻译时注意与已有术语表保持一致，如果没有补充，不要重复输出；如果发现有名词翻译不一致，重新输出更正后的翻译：\n{hints}\n\n"
        else:
            hints = ""
        sysprom = sysprom.replace("【HINT】", hints)
        messages = [
            {"role": "system", "content": GENDIC_PROMPT},
            {"role": "user", "content": input}
        ]
        res.append(messages)
    return res

def gen_dict(path):
    global api_key, base_url, model_name, output
    if os.path.basename(path) in output_data["used_files"]:
        return
    client = OpenAI(
        api_key=api_key,
        base_url=base_url,
    )
    prompts = gen_input(path)
    for idx, prompt in enumerate(prompts):
        res = client.chat.completions.create(
            model=model_name,
            messages=prompt
        )
        i = 0
        while i < 5:
            try:
                output = res.choices[0].message.content
                logging.info(f"Raw output: {output}")
                output = process_output(output)
                logging.info(f"#######Process Done file: {path}_part{idx}/{len(prompts)}")
                i = 0
                break
            except:
                i += 1
                continue
        if i == 5:
            logging.info(f"Failed to process output for {path}_part{idx}/{len(prompts)}")
            return
        output_data["dict"].update(output)

    output_data["used_files"].append(os.path.basename(path))
    save_json("autodict.json", output_data)

# gen_dict("tips.json")
# gen_dict("arcs.json")

# MAX_THREADS = 5

# def _worker(path):
#     try:
#         logging.info(f"#######{os.path.basename(path)}")
#         gen_dict(path)
#     except Exception:
#         logging.exception(f"Error processing {path}")

# files = [os.path.join("gt_input", f) for f in os.listdir("gt_input") if f.endswith(".json")]

# if files:
#     with ThreadPoolExecutor(max_workers=MAX_THREADS) as ex:
#         futures = {ex.submit(_worker, fp): fp for fp in files}
#         for fut in as_completed(futures):
#             try:
#                 fut.result()
#             except Exception:
#                 pass
# else:
#     logging.info("No json files in gt_input")

dicts = output_data["dict"]
f = open("项目GPT字典_auto.txt", "w", encoding="utf-8")
for k in dicts:
    f.write(f"{k}\t{dicts[k]['chinese']}\t{dicts[k]['remark']}\n")
for t in open_json("tips_dict.json"):
    if t not in dicts:
        f.write(f"{t}\t{open_json('tips_dict.json')[t]}\t\n")