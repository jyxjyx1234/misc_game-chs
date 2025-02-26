from Majiro_arc_file import *
from Lib import *

# pack_file = Majiro_arc_fileV3()
# pack_file.unpack("scenario.arc", "scenario/", isenc = False)

packages = ["update"]
for package in packages:
    files = os.listdir(package)
    files = [package + "/" + file for file in files if file.endswith(".mjo")]
    for file in files:
        print(file)
        os.system(f"cd MajiroTool.Cli.v1.0.26.1156 && maji -e=all disassemble \"..\\{file}\"")