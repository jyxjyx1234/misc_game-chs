import datetime
import re

a = input("请输入身份证号")

pattern = r"\d{6}(\d{4})(\d{2})(\d{2})\d{3}[\dxX]$"
match = re.match(pattern, a)
if not match:
    print("身份证号格式不正确")
else:
    year = int(match.group(1))
    month = int(match.group(2))
    day = int(match.group(3))
    try:
        d = datetime.datetime.strptime(f"{year}-{month}-{day}", "%Y-%m-%d")
        print(d.strftime("%Y-%m-%d"))
        print(f"{year}年{month}月{day}日")
    except:
        print("身份证号日期不正确")