# -*- coding:utf-8 -*-
#用于导出rld文件的文本
#by Darkness-TX
#2017.11.17

import struct
import os
import sys
import io
import re
import json

namesdict = {}

def byte2int(byte):
	long_tuple = struct.unpack('L',byte)
	long = long_tuple[0]
	return long

def remove_zhuyin(t):
	def m(matches:re.Match):
		return matches.group(1)
	t = re.sub(r"(?<=《)(.*?):.*?》",m,t)
	t = t.replace("《","")
	return(t)

def int2byte(num):
	return struct.pack('L',num)

def dumpstr(src):
	bstr = b''
	c = src.read(1)
	while c != b'\x00':
		bstr += c
		c = src.read(1)
	return bstr

def FormatString(string, count):
	res = "○%08d○\n%s\n●%08d●\n%s\n\n"%(count, string, count, string)
	return res

def ReadHeader(src):
	tag = ''
	magic = src.read(4)
	ver = byte2int(src.read(4))
	offset = byte2int(src.read(4))
	count = byte2int(src.read(4))
	flag = byte2int(src.read(4))
	if flag == 1:
		tag = dumpstr(src)
	return magic, ver, offset, count, flag, tag

def Opcode_Analysis(src):
	buff = byte2int(src.read(4))
	op = buff & 0xFFFF
	init_count = (buff & 0xFF0000) >> 16
	str_count = (buff >> 24) & 0xF
	unk = buff >> 28
	return op, init_count, str_count, unk

def Get_Name_Table(dump_str):
	names = {}
	for l in dump_str:
		group = l.split(',')
		names[int(group[0])] = group[3]
	return names

def rld_output(fname, name_table=[]):
	#print(fname)
	src = open(os.path.join('rld', fname), 'rb')
	magic, ver, offset, count, flag, tag = ReadHeader(src)
	if magic != b'\00DLR':
		print(fname + "不是支持的类型")
	else:
		src.seek(offset, os.SEEK_SET)
		dst = open(os.path.join('rld', fname[:-4] + '.json'), 'w', encoding='utf8')
		dst_ORI = open(os.path.join('rld', fname[:-4] + '.ori'), 'wb')
		outjson = []
		l = 0
		dump_str = []
		dic = {}

		for i in range(0, count):
			opcode, init_count, str_count, unk = Opcode_Analysis(src)
			all_init = []
			all_str =[]
			for j in range(0, init_count):
				val = src.read(4)
				all_init.append(byte2int(val))
			for k in range(0, str_count):
				row_byte = dumpstr(src)
				all_str.append(row_byte)

			if opcode == 28:
				if all_init[0] in name_table:
					#dic["name"] = name_table[all_init[0]]
					dump_str.append(name_table[all_init[0]])

				dic['name'] = all_str[0].decode("932","ignore")
				dic['message'] = remove_zhuyin(all_str[1].decode("932","ignore"))
				dst_ORI.write(all_str[1].replace(b'\x0a',b'')+b'\x0d\x0a')
				if dic['name'] == "記述":
					del(dic['name'])
				else:
					namesdict[dic['name']] = dic['name']
				outjson.append(dic)

				dic = {}
				'''for stringb in all_str:
					string = stringb.decode("932","ignore")
					if string != '*' and string != '$noname$' and len(string) != 0 and string.count(',') < 2:
						if all_init[0] in name_table:
							dic["name"] = name_table[all_init[0]]
						dic["message"] = string
						if ('name' not in dic or dic['message'].split("＆")[0] not in name_table.values()) and dic['message']!="記述":
							dst_ORI.write(stringb+b'\x0d\x0a')
							outjson.append(dic)
						dump_str.append(string)
						dic = {}'''
				

			elif opcode == 21:
				for stringb in all_str:
					string = stringb.decode("932","ignore")
					if string != '*' and string != '$noname$' and len(string) != 0 and string.count(',') < 2:
						dic["message"] = remove_zhuyin(string)
						dst_ORI.write(stringb.replace(b'\x0a',b'')+b'\x0d\x0a')

						dump_str.append(string)
						outjson.append(dic)
						dic = {}

			elif opcode == 48:
				dic["message"] = remove_zhuyin(all_str[0].decode("932","ignore"))
				dst_ORI.write(all_str[0].replace(b'\x0a',b'')+b'\x0d\x0a')

				dump_str.append(all_str[0].decode("932","ignore"))
				outjson.append(dic)
				dic = {}

			elif opcode == 191:
				if len(all_str[0].decode("932","ignore")) != len(all_str[0]):
					dic["message"] = remove_zhuyin(all_str[0].decode("932","ignore"))
					dst_ORI.write(all_str[0].replace(b'\x0a',b'')+b'\x0d\x0a')

					dump_str.append(all_str[0].decode("932","ignore"))
					outjson.append(dic)
					dic = {}

		json.dump(outjson,dst,ensure_ascii=False,indent=2)
		return dump_str

def main():
	dump_str = rld_output('defChara.rld')
	name_table = Get_Name_Table(dump_str)
	for f in os.listdir('rld'):
		if not f.endswith('.rld') or f == 'defChara.rld':
			continue
		rld_output(f, name_table)
	json.dump(namesdict, open("names.json","w",encoding="utf8"),ensure_ascii=False,indent=2)
main()
