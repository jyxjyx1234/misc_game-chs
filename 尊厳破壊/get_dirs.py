import os
path = "data"
subdirs = []
for root, dirs, files in os.walk(path):
    for dir_name in dirs:
        relative_path = os.path.relpath(os.path.join(root, dir_name), path)
        subdirs.append(relative_path)
for subdir in subdirs:
    print("\"data/" + subdir.replace("\\", "/") + "\",")

'''
"data/cursor",
"data/image",
"data/mask",
"data/plugin",
"data/script",
"data/sound",
"data/system",
"data/text",
"data/thumbnail",
"data/voice",
'''