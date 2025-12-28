import os
path = "D:\\game\\淫虜日記 ～少女は如何に壊れたか～\\DATA"
subdirs = []
for root, dirs, files in os.walk(path):
    for dir_name in dirs:
        relative_path = os.path.relpath(os.path.join(root, dir_name), path)
        subdirs.append(relative_path)
for subdir in subdirs:
    print("\"data/" + subdir.replace("\\", "/") + "\",")