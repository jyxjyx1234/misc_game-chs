from openai import OpenAI

namejson = open("namedict.json", "r", encoding="utf-8").read()

api_key = "sk-qjuI94JMYNCRLmuwNovdURRloIcVJDBswupzEH5fR80uFYEc"
endpoint = "https://huanxiong.buzz/v1"
client = OpenAI(api_key = api_key, base_url = endpoint)
content = []
content.append({"role": "system", "content": "下面我会提供一段json文件，保存了一系列键值对，其中key为日文人名，请将value翻译为对应的中文，然后将翻译结果保存为json文件。只需要修改value中的内容，key不需要改变。只需要返回json文件的内容，不要输出其余的内容。"})
content.append({"role": "user", "content": namejson})
res = client.chat.completions.create(model="deepseek-ai/DeepSeek-V3", messages=content)
res = res.choices[0].message.content
with open("namedict_transed.json", "w", encoding="utf-8") as f:
    f.write(res)