from Lib import *

files = os.listdir('system\\')

for file in files:
    data = open_file_b('system\\' + file)
    try:
        data = data.decode('932')
        data = data.encode('utf-16')
        save_file_b('system\\' + file, data)
        print(file)
    except:
        pass