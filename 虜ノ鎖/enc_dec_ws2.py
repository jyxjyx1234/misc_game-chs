from Lib import *

def dec(data):
    data = bytearray(data)
    for i in range(len(data)):
        data[i] = ((data[i] >> 2) + ((data[i] << 6)) & 0xFF)
    data = bytes(data)
    return data

def enc(data):
    data = bytearray(data)
    for i in range(len(data)):
        data[i] = ((data[i] << 2) + ((data[i] >> 6)) & 0xFF)
    data = bytes(data)
    return data

if __name__ == "__main__":
    oriPath = "D:\\game\\虜ノ鎖～処女たちを穢す淫らな楔～\\Rio"
    outPath = "Rio"
    os.makedirs(outPath, exist_ok=True)

    for file in os.listdir(oriPath):
        if file.endswith(".ws2"):
            with open(os.path.join(oriPath, file), "rb") as f:
                data = f.read()
            enc_data = dec(data)
            with open(os.path.join(outPath, file), "wb") as f:
                f.write(enc_data)