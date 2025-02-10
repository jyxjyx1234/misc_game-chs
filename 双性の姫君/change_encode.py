from Lib import *

dir = 'D:\CHS\misc_game-chs\双性の姫君\scenario\\'

files = os.listdir(dir)

for file in files:
    data = open_file_b(dir + file)
    try:
        data = data.decode('932')
        data = data.encode('utf-16')
        save_file_b(dir + file, data)
        print(file)
    except:
        pass