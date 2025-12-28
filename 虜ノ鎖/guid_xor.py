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

print(xor_guid("{B8A4D9DD-3BAD-90A9-4EDB-CEDBDE07C8E9}", 221))