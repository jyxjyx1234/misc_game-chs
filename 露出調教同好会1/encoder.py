import codecs

# 定义特殊字符映射
special_chars = "　、。・？！（）「」０１２３４５６７８９あいうえおかがきぎくぐ　げこごさざしじすずせぜそぞただちぢっつづてでとどなにぬねのはばひびふぶへべほぼまみむめもゃやゅゆょよらりるれろわをんアイウエオカキクケコサシスセソタチッツテトナニけネノハヒフヘホマミムメモヤ"

# 创建编码和解码映射
encode_map = {char: bytes([i + 1]) for i, char in enumerate(special_chars)}
decode_map = {bytes([i + 1]): char for i, char in enumerate(special_chars)}

class CustomEncodingError(Exception):
    pass

def custom_encode(input_string):
    result = bytearray()
    for char in input_string:
        if char in encode_map:
            result.extend(encode_map[char])
        else:
            # 检查字符是否在 \x01-\x80 范围内
            if '\x01' <= char <= '\x80':
                raise CustomEncodingError(f"Forbidden character encountered: {repr(char)}")
            result.extend(char.encode('sjis', errors='replace'))
    return bytes(result), len(input_string)

def custom_decode(input_bytes):
    # 确保 input_bytes 是 bytes 类型
    if isinstance(input_bytes, memoryview):
        input_bytes = input_bytes.tobytes()
    result = []
    i = 0
    while i < len(input_bytes):
        if input_bytes[i] in range(1, 128):
            result.append(decode_map[bytes([input_bytes[i]])])
            i += 1
        else:
            # 处理SJIS编码的字符
            char_bytes = input_bytes[i:i+2]
            result.append(char_bytes.decode('sjis', errors='replace'))
            i += 2
    return ''.join(result), len(input_bytes)

class CustomCodec(codecs.Codec):
    def encode(self, input, errors='strict'):
        return custom_encode(input)

    def decode(self, input, errors='strict'):
        return custom_decode(input)

class CustomIncrementalEncoder(codecs.IncrementalEncoder):
    def encode(self, input, final=False):
        return custom_encode(input)[0]

class CustomIncrementalDecoder(codecs.IncrementalDecoder):
    def decode(self, input, final=False):
        return custom_decode(input)[0]

class CustomStreamWriter(CustomCodec, codecs.StreamWriter):
    pass

class CustomStreamReader(CustomCodec, codecs.StreamReader):
    pass

# 注册编解码器
def custom_codec_search(encoding_name):
    if encoding_name == 'sb':
        return codecs.CodecInfo(
            name='sb',
            encode=CustomCodec().encode,
            decode=CustomCodec().decode,
            incrementalencoder=CustomIncrementalEncoder,
            incrementaldecoder=CustomIncrementalDecoder,
            streamwriter=CustomStreamWriter,
            streamreader=CustomStreamReader
        )
    return None

codecs.register(custom_codec_search)

if __name__ == "__main__":
    codecs.register(custom_codec_search)
    print('秋の夜空はどこか儚く見えた。'.encode('sb').hex())