from Lib import *

a = open_file_b("gimaimain.dat")
b = open_file_b("test.dat")
c = []

d=[]
for i in range(len(a)):
    if i <= 0x7e0:
        _ = a[i] + b[i]
        c.append(_)
        d.append(str(b[i]))
    else:
        c.append(a[i])
c = bytes(c)

save_file_b("gimaimain.dat2",c)

d = ", ".join(d)
f = open("temp.txt", "w")
f.write(d)