import os
path = "F:\\Downloads\\Re：birth colony -Lost azurite-\\data"
subdirs = []
for root, dirs, files in os.walk(path):
    for dir_name in dirs:
        relative_path = os.path.relpath(os.path.join(root, dir_name), path)
        subdirs.append(relative_path)
for subdir in subdirs:
    #Storages.addAutoPath(System.exePath+"chs.xp3>system/");
    # print(f'Storages.addAutoPath(System.exePath+"chs.xp3>{subdir.replace("\\", "/")}/");')
    print(f'"data/{subdir}",')