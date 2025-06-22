from WS2FILE import *

files = os.listdir("Rio")
outpath = "rio_dump"
os.makedirs(outpath, exist_ok=True)
for file in files:
    print(f"Processing {file}...")
    if not file.endswith(".ws2"):
        continue
    with open(os.path.join("Rio", file), "rb") as f:
        data = f.read()
    dumper = WS2FileDumper(data)
    output_file = os.path.join(outpath, file + ".txt")
    dumper.dump(output_file)