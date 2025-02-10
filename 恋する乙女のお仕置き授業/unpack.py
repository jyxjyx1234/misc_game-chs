from Majiro_arc_file import *
from Lib import *

pack_file = Majiro_arc_fileV3()
pack_file.unpack("scenario1.arc", "scenario1/", isenc = False)
pack_file2 = Majiro_arc_fileV3()
pack_file2.unpack("scenario2.arc", "scenario2/", isenc = False)

packages = ["scenario1", "scenario2"]
for package in packages:
    files = os.listdir(package)
    files = [package + "/" + file for file in files if file.endswith(".mjo")]
    for file in files:
        os.system(f"cd MajiroTool.Cli.v1.0.26.1156 && maji -e=all disassemble \"..\\{file}\"")