# Common routines for handling BGI .bp scripts

import struct

import bp_setup

def escape(text):
	text = text.replace('\a', '\\a')
	text = text.replace('\b', '\\b')
	text = text.replace('\t', '\\t')
	text = text.replace('\n', '\\n')
	text = text.replace('\v', '\\v')
	text = text.replace('\f', '\\f')
	text = text.replace('\r', '\\r')
	return text
	
def unescape(text):
	text = text.replace('\\a', '\a')
	text = text.replace('\\b', '\b')
	text = text.replace('\\t', '\t')
	text = text.replace('\\n', '\n')
	text = text.replace('\\v', '\v')
	text = text.replace('\\f', '\f')
	text = text.replace('\\r', '\r')
	return text

def get_byte(data, offset):
	bytes = data[offset:offset+1]
	if len(bytes) < 1:
		return None
	return struct.unpack('B', bytes)[0]

def get_word(data, offset):
	bytes = data[offset:offset+2]
	if len(bytes) < 2:
		return None
	return struct.unpack('<H', bytes)[0]

def get_dword(data, offset):
	bytes = data[offset:offset+4]
	if len(bytes) < 4:
		return None
	return struct.unpack('<I', bytes)[0]

def get_section_boundary(data):
	pos = -1
	# This is somewhat of a kludge to get the beginning of the text section as it assumes that the
	# code section ends with the byte sequence: 17 (this is probably a return or exit command).
	while 1:
		res = data.find(b'\x17', pos+1)
		if res == -1:
			break
		pos = res
	return (pos + 0x10)>>4<<4
	
def split_data(data):
	section_boundary = get_section_boundary(data)
	hdr_size, = struct.unpack('<I', data[0:4])
	hdr_bytes = data[:hdr_size]
	code_bytes = data[hdr_size:section_boundary]
	text_bytes = data[section_boundary:]
	return hdr_bytes, code_bytes, text_bytes

def get_text_section(text_bytes):
	strings = text_bytes.split(b'\x00')
	addrs = []
	pos = 0
	for string in strings:
		addrs.append(pos)
		pos += len(string) + 1
	texts = []
	for string in strings:
		try:
			text = string.decode(bp_setup.senc)
			texts.append(text)
		except UnicodeDecodeError:
			pass
	text_section = {}
	for addr,text in zip(addrs,texts):
		text_section[addr] = text
	return text_section
	
def get_code_section(code_bytes, text_section):
	pos = -1
	code_size = len(code_bytes)
	code_section = {}
	id = 1
	texts = {}
	while 1:
		res = code_bytes.find(b'\x05', pos+1)
		if res == -1:
			break
		word, = struct.unpack('<H', code_bytes[res+1:res+3])
		if word+res-code_size in text_section:
			text = text_section[word+res-code_size]
			if text not in texts:
				texts[text] = id
				id += 1
			record = text, texts[text]
			code_section[res] = record 
		pos = res
	return code_section
