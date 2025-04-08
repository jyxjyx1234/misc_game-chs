#! /usr/bin/env python3

# BGI .bp script dumper

import glob
import os
import struct
import sys

import bp_common
import bp_setup

def dump_text(fo, id, text):
	fo.write('<%s%04d>%s\n' % (bp_setup.slang,id,text))
	for lang in bp_setup.dlang:
		if bp_setup.dcopy:
			fo.write('<%s%04d>%s\n' % (lang,id,text))
		else:
			fo.write('<%s%04d>\n' % (lang,id))
	fo.write('\n')
	
def dump_unique(fo, code_section):
	text_set = set()
	for addr in sorted(code_section):
		text, id = code_section[addr]
		if text not in text_set:
			dump_text(fo, id, bp_common.escape(text))
			text_set.add(text)

def dump_sequential(fo, code_section):
	for addr in sorted(code_section):
		text, id = code_section[addr]
		dump_text(fo, id, bp_common.escape(text))
	
def dump_script(script):
	data = open(script, 'rb').read()
	hdr_bytes, code_bytes, text_bytes = bp_common.split_data(data)
	text_section = bp_common.get_text_section(text_bytes)
	code_section = bp_common.get_code_section(code_bytes, text_section)
	# scriptname = os.path.splitext(script)[0]
	scriptname = os.path.basename(script)
	outpath = "dump\\"
	os.makedirs(outpath, exist_ok=True)
	fo = open("dump\\" + scriptname + bp_setup.dext, 'w', encoding=bp_setup.denc)
	dump_unique(fo, code_section)
	fo.close()

if __name__ == '__main__':
	if len(sys.argv) < 2:
		print('Usage: bp_dump.py <file(s)>')
		print('(only files with extension ._bp among <file(s)> will be processed)')
		sys.exit(1)
	for arg in sys.argv[1:]:
		for script in glob.glob(arg):
			base, ext = os.path.splitext(script)
			if ext == '._bp':
				print('Dumping %s...' % script)
				dump_script(script)
			