from Lib import *
import struct
import sys
import os
import glob
import struct
import unicodedata

def Decrypt(string,l,k):
    key=28807
    localKey=key*k%65536
    newString=b''
    for n in range(0,l):
        newString+=struct.pack('H',localKey^struct.unpack('H',string[n*2:n*2+2])[0])
    return newString

class Header:
    headerData=b''
    headerList=[]
    length=0
    index=0
    count=0
    offset=0
    dataCount=0
    def __init__(H,f):
        f.seek(0)
        H.length=struct.unpack('I',f.read(4))[0]
        H.headerData=f.read(128)
        H.headerList=struct.unpack('32I',H.headerData)
        H.index=H.headerList[2]
        H.count=H.headerList[3]
        H.offset=H.headerList[4]
        H.dataCount=H.headerList[5]

def check(scr,checkHalf):
    if checkHalf:
        for char in scr:
            if unicodedata.east_asian_width(char)=='Na':
                return False
        return True
    else:
        for char in scr:
            if unicodedata.east_asian_width(char)!='Na':
                return True
        return False

def softIndex(l,c,e):
    return l*1000000+c*1000+e

def main(inF, outF):
    countError=0
    os.makedirs(outF, exist_ok=True)
    for inFN in glob.glob(inF+"*.ss"):
        print(inFN)
        outFN=outF+inFN[inFN.rfind("\\")+1:]+".txt"
        try:
            output=open(outFN,'w',1,"UTF-8")
        except:
            print("Output file error!")
            countError+=1
            continue
        indexs=[]
        texts=[]
        try:
            file=open(inFN,'rb')
            header=Header(file)
            file.seek(header.index) # 0x0c: 0x84
            offset=[]
            length=[]
            for n in range(0, header.count):# 0x10
                offset.append(struct.unpack('I',file.read(4))[0])
                length.append(struct.unpack('I',file.read(4))[0])
            indexs=[]
            texts=[]
            maxOffset=max(offset)
            for x in range(0,header.count):
                if length[x]==0:
                    continue
                file.seek(header.offset+offset[x]*2,0)
                string=file.read(length[x]*2)
                text=Decrypt(string,length[x],x).decode("UTF-16")
                indexs.append(x)
                texts.append((text, header.offset+offset[x]*2))
            file.close()
        except:
            print("Input file error!")
            countError+=1

        if indexs and texts:
            for index,text in zip(indexs,texts):
                # if not check(text,fullDump) and not noDump:
                #     continue
                text, offset=text
                outLine="○"+'%.10d'%index+"○" + f"[{offset:X}]" +text+"\n●"+'%.10d'%index+"●"+text+"\n\n"
                output.write(outLine)
        output.write(f"maxOffset: {header.offset + maxOffset * 2 :X}\n")
        output.close()
        if os.path.getsize(outFN)==0:
            os.remove(outFN)
            
    if countError:
        return countError
    else:
        return True

if __name__=="__main__":
    main("Scene\\", "text\\")