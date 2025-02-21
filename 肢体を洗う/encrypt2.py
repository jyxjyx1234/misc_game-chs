import os
import sys
import time
import ctypes

startTime = time.time()

def uint32(x):
    return x & 0xFFFFFFFF

def shift_and_combine(value, shift):
    return ((value << (31 - shift)) & 0xFFFFFFFF) + (value >> (shift + 1))

base_shl = {}
for i in range(32):
    base_shl[i] = uint32(0x5CC8E9D7 << i)
key_shr = {}
for i in range(32):
    key_shr[i] = uint32(0xA3371629 >> i)
def key_from_offset(offset):
    BASE = 0x5CC8E9D7
    offset_and_f = offset & 0xF
    offset_sub_base = (offset - BASE) & 0xFFFFFFFF
    v1 = offset_sub_base + key_shr[offset_and_f + 1] - base_shl[31 - offset_and_f]
    temp1 = offset_sub_base + shift_and_combine(v1, (offset >> 4) & 0xF)
    v5 = offset_sub_base + shift_and_combine(temp1, (offset >> 8) & 0xF)
    v6 = offset_sub_base + shift_and_combine(v5, (offset >> 12) & 0xF)
    v7 = offset_sub_base + shift_and_combine(v6, (offset >> 16) & 0xF)
    temp2 = offset_sub_base + shift_and_combine(v7, (offset >> 20) & 0xF)
    v9 = offset_sub_base + shift_and_combine(temp2, (offset >> 24) & 0xF)
    key = offset_sub_base + shift_and_combine(v9, offset >> 28)
    print(v1, hex(temp1), v5, v6, v7, temp2, v9)
    return (key >> offset_and_f) & 0xFF

def key_from_offset_ori(offset):
    BASE = 0x5CC8E9D7
    v1 = uint32(uint32(offset - BASE) + uint32(0xA3371629 >> ((offset & 0xF) + 1)) - uint32(BASE << (31 - (offset & 0xF))))
    v3 = uint32(v1 << (31 - ((offset >> 4) & 0xF)))
    v4 = uint32(v1 >> (((offset >> 4) & 0xF) + 1))
    temp1 = uint32(offset - BASE + v3 + v4)
    v5 = uint32(uint32(offset - BASE) + 
                uint32(temp1 << (31 - ((offset >> 8) & 0xF))) + 
                uint32(temp1 >> (((offset >> 8) & 0xF) + 1)))
    
    v6 = uint32(uint32(offset - BASE) + 
                uint32(v5 << (31 - ((offset >> 12) & 0xF))) + 
                uint32(v5 >> (((offset >> 12) & 0xF) + 1)))
    
    v7 = uint32(uint32(offset - BASE) + 
                uint32(v6 << (31 - ((offset >> 16) & 0xF))) + 
                uint32(v6 >> (((offset >> 16) & 0xF) + 1)))
    
    v8 = (offset >> 20) & 0xF
    
    temp2 = uint32(offset - BASE + uint32(v7 << (31 - v8)) + uint32(v7 >> (v8 + 1)))
    v9 = uint32(uint32(offset - BASE) + 
                uint32(temp2 << (31 - ((offset >> 24) & 0xF))) + 
                uint32(temp2 >> (((offset >> 24) & 0xF) + 1)))
    
    key = uint32(uint32(offset - BASE) + 
                uint32(v9 << (31 - (offset >> 28))) + 
                uint32(v9 >> ((offset >> 28) + 1))) >> (offset & 0xF)
    
    print(v1, hex(temp1), v5, v6, v7, temp2, v9)
    return key & 0xFF

for i in range(100):
    if key_from_offset(i) != key_from_offset_ori(i):
        print("Error at", i)
        exit(1)

key_dict = {}
for i in range(0x1000000):
    key_dict[i] = key_from_offset(i)
def fast_key_from_offset(offset):
    if offset > 0x1000000:
        return key_from_offset(offset)
    else:
        return key_dict[offset]

endTime = time.time()
print("Time used: ", endTime - startTime)


def xor_file(input_path, output_path):
    # 确保输出目录存在
    os.makedirs(os.path.dirname(output_path), exist_ok=True)
    
    # 读取输入文件
    with open(input_path, 'rb') as in_file:
        data = in_file.read()
        
    # 使用基于偏移量的XOR进行加密
    result = bytearray()
    for i, byte in enumerate(data):
        key_byte = key_from_offset(i)
        result.append(byte ^ key_byte)
    
    # 写入输出文件
    with open(output_path, 'wb') as out_file:
        out_file.write(result)

def process_directory(input_dir, output_dir):
    # 遍历所有文件和子目录
    for root, dirs, files in os.walk(input_dir):
        # 计算相对路径
        rel_path = os.path.relpath(root, input_dir)
        # 构建输出目录路径
        output_root = os.path.join(output_dir, rel_path)
        
        # 处理每个文件
        for file in files:
            input_path = os.path.join(root, file)
            output_path = os.path.join(output_root, file)
            try:
                xor_file(input_path, output_path)
                print(f"处理文件: {input_path} -> {output_path}")
            except Exception as e:
                print(f"处理文件 {input_path} 时出错: {str(e)}")

# def main():
#     if len(sys.argv) != 3:
#         print("用法: python encrypt.py <输入目录> <输出目录>")
#         sys.exit(1)
    
#     input_dir = sys.argv[1]
#     output_dir = sys.argv[2]
    
#     if not os.path.exists(input_dir):
#         print(f"输入目录不存在: {input_dir}")
#         sys.exit(1)
    
#     process_directory(input_dir, output_dir)
#     print("处理完成!")

# if __name__ == "__main__":
#     main()
