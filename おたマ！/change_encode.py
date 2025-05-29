from Lib import *

oridir = "test\\"
outdir = "release\\patch\\"
os.makedirs(outdir, exist_ok=True)

files = os.listdir(oridir)

for file in files:
        data = open_file_b(oridir + file)
        try:
            data = data.decode('932')
            if file.endswith(".csv"):
                data = data.encode('936')
            else:
                data = data.encode('utf-16')
            if file.endswith("tjs") or file.endswith("ks"):
                if os.path.exists(outdir + file):
                    print(f"Skipping existing file: {file}")
                    continue
            save_file_b(outdir + file, data)
            # print(file)
        except:
            print("Error: " + file)
            pass