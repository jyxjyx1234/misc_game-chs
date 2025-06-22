from Lib import *

def xor_guid(guid, key):
    guid_hex = guid.replace("{", "").replace("}", "").replace("-", "")
    guid_bytes = bytes.fromhex(guid_hex)
    guid_bytes = bytearray(guid_bytes)
    for i in range(len(guid_bytes)):
        guid_bytes[i] ^= key
    res = "{"
    res += "-".join([
        guid_bytes[0:4].hex(),
        guid_bytes[4:6].hex(),
        guid_bytes[6:8].hex(),
        guid_bytes[8:10].hex(),
        guid_bytes[10:].hex()
    ])
    res += "}"
    return res

print(xor_guid("{8E5B83E9-C49F-9EC7-7B60-FDA235522937}", 223))