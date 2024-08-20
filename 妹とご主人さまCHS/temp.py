import os

a = os.listdir('release\轻量包\Data')

for fn in a:
    fn_ = fn.replace('.wolf',"")
    print(f'''arc_conv Data\{fn}
del Data\{fn_}
ren Data\{fn} {fn}1
ren Data\{fn}~ {fn_}''')