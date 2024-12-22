from openai import OpenAI
import re
model_id = "flux"
endpoint = "https://chat.sweetkxq.com/v1"
api_key = "sk-UUCPiqDGWhgZV9B98EFzblBqYlfDoK8HG92YEbni31twahva"
client = OpenAI(api_key=api_key, base_url=endpoint)
msg = "测试"
image = client.chat.completions.create(
    model = model_id,
    messages = [{"role":"user", "content": msg}],
    )
print(re.search(r"https.*?\.jpg", image.choices[0].message.content).group(0))
