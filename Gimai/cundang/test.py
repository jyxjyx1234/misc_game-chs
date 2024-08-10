from Lib import *

a = open_file_b("gimaimain.dat")
b = open_file_b("gimaimain.datfull")
c=[]

for i in range(len(a)):
    _ = b[i]-a[i]
    if _ < 0:
        _ += 256
    c.append(_)

c = bytes(c)
save_file_b("test.dat",c)