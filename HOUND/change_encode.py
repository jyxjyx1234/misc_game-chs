from Lib import *

path = 'sys_scr\\'
files = os.listdir(path)

for file in files:
    data = open_file_b(path + file)
    try:
        data = data.decode('932')
        data = data.encode('utf-16')
        save_file_b(path + file, data)
        print(file)
    except:
        pass