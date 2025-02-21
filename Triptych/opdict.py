'''
b: bytes
i: u32
s: str
t: 需要翻译的文本
o: 选项
j: 跳转u32
?: 可能有文本
I: 可能有U32
x: 标题文本
'''

opdict = {
    "00": "iiiiIIII",
    "1e": "iiiiIIII",
    "30": "iiiiIIII",
    "2c": "iiiiIIII",
    "04": "iiiix",
    "4b": "iiiiIIII",
    "3d": "iiiiIIII",
    "4d": "iiiii?",
    "38": "iiiiIIIIIIIIIIII",
    "16": "iiiiIIII",
    "6e": "iiiiIIII",
    "2a": "iiiit",
    "68": "iiiiIIII",
    "74": "iiiiIIII",
    "7e": "iiiis",
    "05": "iiiiIIII",
    "36": "iiiiIIII",
    "75": "iiiis",
    "78": "iiiiIIII",
    "29": "iiiin",
    "77": "iiiiIIII",
    "17": "iiiiIIII",
    "79": "iiiis",
    "3b": "iiiiIIII",
    "6b": "iiiiIIII",
    "3e": "iiiib",
    "72": "iiiiIIII",
    "0d": "iiiio",
    "0b": "jiiiIIII",
    "1f": "iiiiIIII",
    "40": "iiiiIIII",
    "0c": "jiiiIIII",
    "1b": "iiiiIIII",
    "08": "iiiiIIII",
    "06": "iiiiIIII",
    "0a": "jiiiiIIII",
    "76": "iiiis",
    "4f": "iiiiiiIIII",
    "02": "iiiiIIII",
    "1a": "iiiiIIII",
    "2b": "iiiiIIII",
    "7b": "iiiis"
}