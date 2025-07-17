# -*- coding:utf-8 -*-
#用于导出rld文件的文本
#by Darkness-TX
#2017.11.17

import struct
import os
import sys
import io
import json
import re
from Lib import *

def remove_ruby(string):
	new = re.sub(r"《(.*?):(.*?)》", r"\1", string)
	return new

def byte2int(byte):
	long_tuple = struct.unpack('L',byte)
	long = long_tuple[0]
	return long

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
	namedict = {}
	for l in dump_str:
		group = l.split(',')
		names[int(group[0])] = group[3]
		namedict[group[3]] = group[3]
	return names, namedict

def custom_decode(textb):
	res = []
	i = 0
	while i < len(textb):
		char = textb[i]
		if (char >= 0x81 and char <= 0x9f) or (char >= 0xe0 and char <= 0xef):
			res.append(textb[i:i+2].decode('932'))
			i += 2
		elif char == 0xf0:
			# print(f"Warning: {textb[i:i+2]}")
			res.append(f'[{textb[i+1:i+2].hex()}]')
			i += 2
		else:
			res.append(textb[i:i + 1].decode('932'))
			i += 1
	return ''.join(res)

def rld_output(fname, name_table=[], namedict={}):
	print(fname)
	src = open(os.path.join('bin', fname), 'rb')
	magic, ver, offset, count, flag, tag = ReadHeader(src)
	if magic != b'\00DLR':
		print(fname + "不是支持的类型")
	else:
		src.seek(offset + 4, os.SEEK_SET)
		os.makedirs('gt_input', exist_ok=True)
		if fname != "defChara.bin":
			dst = open(os.path.join('gt_input', fname[:-4] + '.json'), 'w', encoding='utf8')
		# dst_ORI = open(os.path.join('rld', fname[:-4] + '.ori'), 'wb')
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
				showname = ""
				if all_init[0] in name_table:
					dic["name"] = name_table[all_init[0]]
					dump_str.append(name_table[all_init[0]])
					showname = dic["name"]
				for idx, stringb in enumerate(all_str):
					string = custom_decode(stringb)
					if string != '*' and string != '$noname$' and len(string) != 0 and string.count(',') < 2:
						if idx == 0:
							showname = string
							continue
						if showname:
							dic["name"] = showname
							namedict[showname] = showname
						dic["message"] = remove_ruby(string)
						dic["ori"] = stringb.hex()
						# dic["op"] = opcode
						# dic["idx"] = idx

						dump_str.append(string)
						outjson.append(dic)
						dic = {}

			elif opcode == 21:
				for stringb in all_str:
					string = custom_decode(stringb)
					if string != '*' and string != '$noname$' and len(string) != 0 and string.count(',') < 2:
						options = remove_ruby(string).split('\t')
						for opt in options:
							if not re.match(r"[0-9a-zA-Z\*-]", opt):
								dic["message"] = remove_ruby(opt)
								dic["ori"] = opt.encode('932').hex()
								# dic["op"] = opcode
								outjson.append(dic)
								dic = {}
						# dic["op"] = opcode
						dump_str.append(string)

			elif opcode == 48:
				dic["message"] = remove_ruby(custom_decode(all_str[0]))
				dic["ori"] = all_str[0].hex()
				# dic["op"] = opcode

				dump_str.append(custom_decode(all_str[0]))
				outjson.append(dic)
				dic = {}

			elif opcode == 191:
				if len(custom_decode(all_str[0])) != len(all_str[0]):
					dic["message"] = remove_ruby(custom_decode(all_str[0]))
					dic["ori"] = all_str[0].hex()
					# dic["op"] = opcode

					dump_str.append(custom_decode(all_str[0]))
					outjson.append(dic)
					dic = {}
		if fname != "defChara.bin":
			json.dump(outjson,dst,ensure_ascii=False,indent=2)
		return dump_str, namedict

def main():
	dump_str, _ = rld_output('defChara.bin')
	name_table, namedict = Get_Name_Table(dump_str)
	for f in os.listdir('bin'):
		if not f.endswith('.bin') or f == 'defChara.bin':
			continue
		_, namedict = rld_output(f, name_table, namedict)
	# save_json('namedict.json', namedict)
main()

