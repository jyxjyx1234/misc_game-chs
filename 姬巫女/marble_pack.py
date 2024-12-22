# UTF-8
import os

'''
typedef char s8;



typedef struct {        64个字节，从0x04开始     0-3是文件数量
	s8 name[56];        文件名+？
	u32 offset;
	u32 length;
} mg_data_entry_t; 

static int mbl_probe_name_length(struct package *pkg, unsigned int files, unsigned int *ret_name_length)
{
	unsigned int name_length = 4;
#if 0
	unsigned long file_size;

	if (pkg->pio->length_of(pkg, &file_size))
		return -CUI_ELEN;

	while (1) {
		u32 offset, length;
		unsigned int entry_size;

		if (pkg->pio->readvec(pkg, &offset, 4, 4 + name_length, IO_SEEK_SET))
			return -CUI_EREADVEC;

		entry_size = name_length + 8;
		if (offset >= (4 + (entry_size) * files)) {
			if (pkg->pio->readvec(pkg, &offset, 4, 4 + entry_size * (files - 1) + name_length, IO_SEEK_SET))
				return -CUI_EREADVEC;

			if (pkg->pio->read(pkg, &length, 4))
				return -CUI_EREAD;

			if (offset + length == file_size)
				break;
		}
		name_length++;
	}
#else
	while (1) {
		u32 offset;

		if (pkg->pio->readvec(pkg, &offset, 4, 4 + name_length, IO_SEEK_SET))
			return -CUI_EREADVEC;
		if (offset == files * (name_length + 8) + 4 + 4 || offset == files * (name_length + 8) + 4)
			break;
		name_length++;
	}
#endif
	*ret_name_length = name_length;
	return 0;
}
static int MarbleEngine_mbl_parse_resource_info(struct package *pkg,
												struct package_resource *pkg_res)
{
	void *mbl_entry;

	mbl_entry = pkg_res->actual_index_entry;
	pkg_res->name_length = pkg_res->actual_index_entry_length - 8;
	strncpy(pkg_res->name, (char *)mbl_entry, pkg_res->name_length);	
	pkg_res->offset = *(u32 *)((s8 *)mbl_entry + pkg_res->name_length);
	pkg_res->actual_data_length = 0;
	pkg_res->raw_data_length = *((u32 *)((s8 *)mbl_entry + pkg_res->name_length + 4));

	return 0;
}

	if (!lstrcmpi(name, _T("mg_data"))) {
		const char *dec_key;
		unsigned int i;

		dec_key = get_options("dec_key");
		if (dec_key) {
			int str_len = strlen(dec_key);;

			for (i = 0; i < pkg_res->raw_data_length; i++)
				data[i] ^= dec_key[i % str_len];
		} else {
			for (i = 0; i < pkg_res->raw_data_length; i++)
				data[i] = 0 - data[i];
		}

		pkg_res->replace_extension = _T(".S");
		pkg_res->flags |= PKG_RES_FLAG_REEXT;
	}
'''
''' 
解密字符串在这个字符串附近找
0058ED30                    6D 67 5F 64 61 74 61 2E 6D 62        mg_data.mb
0058ED40  6C 00 72 62 00 6D 67 5F 64 61 74 61 32 2E 6D 62  l.rb.mg_data2.mb
0058ED50  6C 00 72 62 00                                   l.rb.
'''
key = "白兎隊は超サイコー".encode("932")
ITEM_SIZE = 24  # mg_data_entry_t 的大小


def encrypt(data, key):
    idx = 0
    if key:
        key_len = len(key)
        while idx < len(data):
            data[idx] ^= key[idx % key_len]
            idx += 1

    else:
        while idx < len(data):
            data[idx] = 0 - data[idx]
            idx += 1
    return data


def file_list(raw_data):
    file_all = []
    file_count = int.from_bytes(raw_data[0:4], byteorder='little')
    for i in range(file_count):
        ptr = 4 + i * ITEM_SIZE
        cnt = 0
        stack = b''
        while raw_data[ptr + cnt]:
            stack += raw_data[ptr + cnt:ptr + cnt + 1]
            cnt += 1
            if cnt > ITEM_SIZE:
                print("error: filename too long")
        file_all.append(stack.decode('cp932') + '.S')
    return file_all


def Marble_pack(path='input'):
    src = open('mg_data.mbl', 'rb')
    raw_data = src.read()
    src.close()
    file_all = file_list(raw_data)
    entry_size = int.from_bytes(raw_data[ITEM_SIZE - 4:ITEM_SIZE], byteorder='little')
    new_data = bytearray()
    new_data[0:entry_size] = raw_data[0:entry_size]
    cnt = 0
    ptr = 0
    content = bytearray()

    for file in file_all:  # 按原封包的文件顺序
        print(file)
        src = open(f'{path}/{file}', 'rb')
        data = src.read()
        src.close()
        ptr = 4 + cnt * ITEM_SIZE
        new_data[ptr + ITEM_SIZE - 8:ptr + ITEM_SIZE - 4] = int.to_bytes(entry_size + len(content), 4,
                                                                         byteorder='little')  # 4字节offset
        new_data[ptr + ITEM_SIZE - 4:ptr + ITEM_SIZE] = int.to_bytes(len(data), 4, byteorder='little')  # 4字节size
        cnt += 1
        data = bytearray(data)
        data = encrypt(data, key)
        content += data

    new_data += content
    dst = open('release\\mg_data2.mbl', 'wb')
    dst.write(new_data)
    dst.close()


Marble_pack("release/scr")