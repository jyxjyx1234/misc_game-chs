import struct
import json
import os
from library.silky_mes import SilkyMesScript, SilkyMesScriptError


class AI5WINScript(SilkyMesScript):
    special_symbols_library = (
        (b'\xeb\xa1', b'*1'),
        (b'\xeb\xa2', b'*2'),
        (b'\xeb\xa3', b'*3'),
        (b'\xeb\xa4', b'*4'),
        (b'\xeb\xa5', b'*5'),
        (b'\xeb\xa6', b'*6'),
        (b'\xeb\xa7', b'*7'),
        (b'\xeb\xa8', b'*8'),
        (b'\xeb\xa9', b'*9'),
        (b'\xeb\xaa', b'*a'),
        (b'\xeb\xab', b'*b'),
        (b'\xeb\xac', b'*c'),
        (b'\xeb\xad', b'*d'),
        (b'\xeb\xae', b'*e'),
        (b'\xeb\xaf', b'*f'),
    )

    header_version_threshold = 2
    supported_versions = (
        #-1, "Isaku, etc. ~ 1997 y."),
        # Too much troubles without any need.
        # Every game with -1 has also releases with older versions of the engine.
        (0, "Koihime, etc. ~ 1999 y."),
        (1, "Elf Classics, etc. ~ 2000 y."),
        (2, "Shangrlia Multipack, etc. ~ 2005 y.", ),
    )

    struct_def = "*STRUCT*"
    ancient_struct_def = "*ANCIENT_STRUCT*"
    var_def = "*VARIABLE*"
    group_def = "*GROUP*"
    cont_def = "*CONTINUE*"
    stop_def = "*STOP*"

    # Completely different command library
    # from Silky Engine and AI6WIN.
    # Finally, something not too boring!
    # Not quite as interesting as SLG System...
    # But good enough. Let the hacking start!

    # C -- code structures.
    # c -- ancient code structures. TODO: IMPLEMENT PACK!
    # 6 -- 6-string.
    # R -- crypto-string. TODO: IMPLEMENT PACK!
    # V -- variables methods.
    # G -- group of code structures (probably need to implement normal
    # group structure, such as in SLG System, but...
    # seems it is not necessary).
    # F -- continue if 0.
    # Actually, F is not overly correct.
    # But I did make this crutch
    # to make support of labels easier.

    command_library = {
        #-1: (
        #    (0x12, 'c', ''),
        #),
        0: (  # Less than ideal, since I could not run actual tests on the game itself.
            (0x00, '', 'RETURN'),
            (0x01, 'S', 'TEXT'),
            (0x02, 'C', ''),
            (0x03, 'BCG', 'B_FLAG_SET'),
            (0x04, 'BCG', 'W_FLAG_SET'),
            (0x05, 'CCG', 'EXT_B_FLAG_SET'),
            (0x06, 'CBCG', 'PC_FLAG_SET'),
            (0x07, 'CBCG', 'A_FLAG_SET'),
            (0x08, 'CBCG', ''),
            (0x09, 'CI', 'JUMP_IF'),
            (0x0a, 'I', 'JUMP'),
            (0x0b, 'C', ''),
            (0x0c, '', ''),
            (0x0d, '', ''),
            (0x0e, 'CGI', 'LABEL'),
            (0x0f, 'CG', 'CALL'),

            (0x10, '', ''),
            (0x11, 'V', 'INTERRUPT'),
            (0x12, 'CI', 'INTERRUPT_IF'),
            (0x13, '', ''),  # CG
            (0x14, 'CG', ''),
            (0x15, '', 'MENU'),
            (0x16, 'BCG', 'FLAG_D_SET'),

            (0x51, 'H', ''),  # Crutch!
        ),
        # Changes in commands...
        # I am not counting meanings changes,
        # since there were many of them.
        # 0x02: "C" -> "S".
        # 0x03: "CG" -> "HCG".
        # 0x08: "CG" -> "CBCG".
        # 0x09: "CI" -> "CBCG".
        # 0x0a: "I" -> "CBCG".
        # 0x0b: "C" -> "CI".
        # 0x0c: "" -> "I".
        # 0x0d: "" -> "CV".
        # 0x0e: "CGI" -> "V".
        # 0x0f: "CG" -> "V".
        # 0x10: "" -> "VI".
        # 0x12: "CI" -> "V".
        # 0x13: "" -> "B".
        # 0x14: "CG" -> "CI".
        # Commands 0x18, 0x20 deleted.
        1: (
            (0x00, '', 'RETURN'),
            (0x01, 'S', 'TEXT'),
            (0x02, 'S', 'SYSTEM_TEXT'),
            (0x03, 'HCG', 'B_FLAG_SET'),
            (0x04, 'BCG', 'W_FLAG_SET'),
            (0x05, 'CCG', 'EXT_B_FLAG_SET'),
            (0x06, 'CBCG', 'PC_FLAG_SET'),
            (0x07, 'CBCG', 'A_FLAG_SET'),
            (0x08, 'CFCG', 'G_FLAG_SET'),
            (0x09, 'CBCG', 'PW_FLAG_SET'),
            (0x0a, 'CBCG', 'PB_FLAG_SET'),
            (0x0b, 'CI', 'JUMP_IF'),
            (0x0c, 'I', 'JUMP'),
            (0x0d, 'CV', 'SYS'),
            (0x0e, 'V', 'CH_POS'),
            (0x0f, 'V', 'CALL'),

            (0x10, 'VI', 'MENU_SET'),  # Need to recheck offset.
            (0x11, 'V', 'INTERRUPT'),
            (0x12, 'V', 'SPEC_SYS'),
            (0x13, 'B', 'NEW_LINE'),
            (0x14, 'CI', 'INTERRUPT_IF'),  # Need to recheck offset.
            (0x15, '', 'MENU'),
            (0x16, 'BCG', 'FLAG_D_SET'),
        ),
        # Changes in commands...
        # 0x15: "" -> "CG".
        # New commands: 0x17-0x1f.
        2: (
            (0x00, '', 'RETURN'),
            (0x01, 'S', 'TEXT'),
            (0x02, 'S', 'SYSTEM_TEXT'),
            (0x03, 'HCG', 'B_FLAG_SET'),
            (0x04, 'BCG', 'W_FLAG_SET'),
            (0x05, 'CCG', 'EXT_B_FLAG_SET'),
            (0x06, 'CBCG', 'PC_FLAG_SET'),
            (0x07, 'CBCG', 'A_FLAG_SET'),
            (0x08, 'CFCG', 'G_FLAG_SET'),  # CBCG  # C
            (0x09, 'CBCG', 'PW_FLAG_SET'),
            (0x0a, 'CBCG', 'PB_FLAG_SET'),
            (0x0b, 'CI', 'JUMP_IF'),
            (0x0c, 'I', 'JUMP'),
            (0x0d, 'CV', 'SYS'),
            (0x0e, 'V', 'CH_POS'),
            (0x0f, 'V', 'CALL'),

            (0x10, 'VI', 'MENU_SET'),  # Need to recheck offset.
            (0x11, 'V', 'INTERRUPT'),
            (0x12, 'V', 'SPEC_SYS'),
            (0x13, 'B', 'NEW_LINE'),
            (0x14, 'CI', 'INTERRUPT_IF'),  # Need to recheck offset.
            (0x15, 'CG', 'MENU'),  # ""  # CG
            (0x16, 'BCG', 'FLAG_D_SET'),
            (0x17, 'I', 'MESSAGE'),  # Something close to 0x19 in AI6WIN/Silky Engine...
            (0x18, '', ''),
            (0x1b, 'CG', ''),
            (0x1c, 'CI', ''),
            (0x1d, 'CG', ''),
            (0x1f, 'I', 'LABEL'),
        ),
    }

    struct_library = (  # Seems that it is unchanged.
        (0x80, 'B', 'W_FLAG'),  # Primary flags.

        (0xA0, 'B', 'A_FLAG'),

        (0xC0, 'B', 'PC_FLAG'),

        (0xE0, '', 'ADD'),  # Operations (I don;t sure about 0xE4 and  0xE5, though).
        (0xE1, '', 'SUB'),
        (0xE2, '', 'MUL'),
        (0xE3, '', 'DIV'),
        (0xE4, '', 'REM'),
        (0xE5, '', 'RND'),
        (0xE6, '', 'BYTE_AND'),
        (0xE7, '', 'BYTE_OR'),
        (0xE8, '', 'AND'),
        (0xE9, '', 'OR'),
        (0xEA, '', 'XIR'),
        (0xEB, '', 'LESS'),
        (0xEC, '', 'MORE'),
        (0xED, '', 'LESS_OR_EQ'),
        (0xEE, '', 'MORE_OR_EQ'),
        (0xEF, '', 'EQ'),

        (0xF0, '', 'NOT_EQ'),  # One more operation. Alas, they could not make it in 0xEN...
        (0xF1, 'h', 'GET_H'),
        (0xF2, 'i', 'GET_I'),
        (0xF3, 'H', 'EXT_B_FLAG'),  # ???. Don't really sure.
        (0xF4, '', 'B_FLAG'),
        (0xF5, 'B', 'G_FLAG'),
        (0xF6, 'B', 'PW_FLAG'),
        (0xF7, 'B', 'PB_FLAG'),
        (0xF8, 'B', 'DF_FLAG'),
        (0xFF, '', 'STRUCT_END'),
    )

    ancient_struct_library = (
        #(0x02, '', ''),  # B?
        #(0x06, '6', ''),
        #(0x07, 'B', ''),

        #(0xe5, 'R', ''),
    )

    offsets_library = {
        0: (
            (0x09, 1),
            (0x0a, 0),
            (0x0e, 2),
            (0x12, 1),
        ),
        1: (
            (0x0b, 1),
            (0x0c, 0),
            (0x10, 1),
            (0x14, 1),
        ),
        2: (
            (0x0b, 1),
            (0x0c, 0),
            (0x10, 1),
            (0x14, 1),
            (0x1c, 1),
        )
    }

    def __init__(self, mes_name: str, txt_name: str, version: int, encoding: str = "", debug: bool = False,
                 verbose: bool = False, hackerman_mode: bool = False):
        super().__init__(mes_name, txt_name, encoding, debug, verbose, hackerman_mode)
        self._header_str = ()
        self.version = version

        self.get_C.instances = ("C",)
        self.get_c.instances = ("c",)
        self.get_6.instances = ("6",)
        self.get_R.instances = ("R",)
        self.get_V.instances = ("V",)
        self.get_G.instances = ("G",)
        self.get_F.instances = ("F",)
        self.set_C.instances = self.get_C.instances
        # self.set_c.instances = self.get_c.instances
        self.set_6.instances = self.get_6.instances
        # self.set_R.instances = self.get_R.instances
        self.set_V.instances = self.get_V.instances
        self.set_G.instances = self.get_G.instances
        self.set_F.instances = self.get_F.instances

    # User methods.

    def disassemble(self) -> None:
        """Disassemble AI6WIN mes script."""
        self._offsets = []
        if self.version == 0:
            self._header_str = self._diss_header()
        elif self.version < self.header_version_threshold:  # 1st version... has no header whatsoever!
            self._prm, self._first_offsets = [0, 0], []
        else:
            self._prm, self._first_offsets = self._diss_header()
        self._diss_other_offsets()
        if self._verbose:
            print("Parameters:", self._prm[0:1])
            if self.version >= self.header_version_threshold:
                print("First offsets:", len(self._first_offsets), self._first_offsets)
            print("True offsets:", len(self._offsets), self._offsets)
        self._disassemble_commands()

    def assemble(self) -> None:
        """Assemble Silky Engine mes script."""

        self._prm, self._first_offsets, self._offsets = self._assemble_offsets_and_parameters()

        if self._verbose:
            print("Parameters:", self._prm[0:1])
            if self.version >= self.header_version_threshold:
                print("First offsets:", len(self._first_offsets), self._first_offsets)
            print("True offsets:", len(self._offsets), self._offsets)
        self._assemble_script_file()

    # Technical methods for assembling.

    def _assemble_script_file(self) -> None:
        """Assemble AI6WIN mes script."""
        in_file = open(self._txt_name, 'r', encoding=self.encoding)
        try:
            os.rename(self._mes_name, self._mes_name + '.bak')
        except OSError:
            pass
        out_file = open(self._mes_name, 'wb')

        message_count = 0
        search_offset = [i[0] for i in self._offsets]

        if self.version >= self.header_version_threshold:
            out_file.write(struct.pack('I', self._prm[0]))
            for first_offset in self._first_offsets:
                out_file.write(struct.pack('I', first_offset))

        if self.version == 0:
            out_file.write(struct.pack("H", self._header_str[0]))
            out_file.write(self._header_str[1].encode(self.encoding))
            in_file.readline()

        while True:
            line = in_file.readline()
            if line == '':  # EOF.
                break
            if len(line) == 1:  # To evade some nasty errors.
                continue
            if (line == '\n') or (line[0] == '$'):
                continue
            if line[1] == '0':
                out_file.write(bytes.fromhex(line[2:-1]))
            elif line[1] == '1':
                command_string = line[3:-1]
                command_index = -1
                for num, lib_entry in enumerate(self.command_library[self.version]):  # Check if it is written by name.
                    if command_string == lib_entry[2]:
                        command_index = num
                        break
                if command_index == -1:  # Check if it is written by hex.
                    command_string = int(command_string, 16)
                    for num, lib_entry in enumerate(self.command_library[self.version]):
                        if command_string == lib_entry[0]:
                            command_index = num
                            break
                if command_index == -1:  # There is no such command (text). But this should be impossible!
                    raise AI5WINScriptError("Error! There is no such command.\n{}".format(command_string))
                out_file.write(struct.pack('B', self.command_library[self.version][command_index][0]))

                line = self.read_args_string(in_file)

                argument_list = json.loads(line)

                this_command = self.command_library[self.version][command_index][0]
                offset_set = -1
                if this_command == 0x17:
                    argument_list[0] = message_count
                    message_count += 1
                else:
                    for offset_entry in self.offsets_library[self.version]:
                        if this_command == offset_entry[0]:
                            offset_set = offset_entry[1]
                            break

                if offset_set != -1:
                    indexer = search_offset.index(argument_list[offset_set])
                    argument_list[offset_set] = self._offsets[indexer][1]

                argument_bytes = self.set_args(argument_list, self.command_library[self.version][command_index][1], self.encoding)
                out_file.write(argument_bytes)

        in_file.close()
        out_file.close()

    def _assemble_offsets_and_parameters(self) -> tuple:
        """Assemble offsets and parameters of AI6WIN mes archive."""
        in_file = open(self._txt_name, 'r', encoding=self.encoding)

        first_offsets = []
        offsets = []
        prm = [0, 0]  # First shall be changed. Second is to work with functions inherited from silky_mes.

        pointer = 0
        message_count = 0

        if self.version == 0:
            header_line = in_file.readline()[:-1]
            header_len = len(header_line.encode(self.encoding))
            self._header_str = []
            self._header_str.append(header_len)
            self._header_str.append(header_line)

        while True:
            line = in_file.readline()
            if line == '':  # EOF.
                break
            if len(line) == 1:  # To evade some nasty errors.
                continue
            if (line == '\n') or (line[0] == '$'):  # Line without text or comment should not be parsed as script.
                continue

            # Actually code strings logic.

            if line[1] == '0':  # "Free bytes".
                pointer += len(line[2:-1].split(' '))
            elif line[1] == '1':  # Command.
                command_string = line[3:-1]
                command_index = -1
                for num, lib_entry in enumerate(self.command_library[self.version]):  # Check if it is written by name.
                    if command_string == lib_entry[2]:
                        command_index = num
                        break
                if command_index == -1:  # Check if it is written by hex.
                    command_string = int(command_string, 16)
                    for num, lib_entry in enumerate(self.command_library[self.version]):
                        if command_string == lib_entry[0]:
                            command_index = num
                            break
                if command_index == -1:  # There is no such command (text). But this should be impossible!
                    raise AI5WINScriptError("Error! There is no such command.\n{}".format(command_string))

                if self.command_library[self.version][command_index][0] == 0x17:  # Since header save offsets to messages.
                    message_count += 1
                    first_offsets.append(pointer)

                pointer += 1

                # Okay, now is the time for getting arguments length!
                line = self.read_args_string(in_file)
                try:
                    argument_list = json.loads(line)
                except:
                    print(line)
                    quit()
                if self.command_library[self.version][command_index][0] == 0x17:  # For this to not cause any errors.
                    argument_list[0] = 0
                argument_bytes = self.set_args(argument_list, self.command_library[self.version][command_index][1], self.encoding)
                pointer += len(argument_bytes)

            elif line[1] == '2':  # If label (of true offset).
                offset_array = []

                offset_number = int(line[3:-1])
                offset_array.append(offset_number)
                offset_array.append(pointer)

                offsets.append(offset_array)
        in_file.close()

        prm[0] = message_count

        return prm, first_offsets, offsets

    # Technical methods for disassembling.

    def _disassemble_commands(self) -> None:
        """Disassemble Silky Engine mes script commands."""
        commands = []
        args = []
        # [Opcode, struct, name].
        pointer = self.get_true_offset(0)
        stringer = ''
        these_indices = []

        out_file = open(self._txt_name, 'w', encoding=self.encoding)
        in_file = open(self._mes_name, 'rb')
        in_file.seek(pointer, 0)

        sorted_offset = sorted(list(enumerate(self._offsets)), key=lambda x: x[1])
        # Sorted by offsets, but with index saving.
        search_offset = [i[1] for i in sorted_offset]
        initial_sorted_offset = sorted_offset.copy()
        initial_search_offset = search_offset.copy()
        # I know, you may say it's pointless, but that's for the sake of optimization.

        second_offsets = [self.get_true_offset(i) for i in self._second_offsets]

        if self.version == 0:
            out_file.write("{}\n".format(self._header_str[1]))

        while True:
            pointer = in_file.tell()  # To get current position before the command.

            # Offsets functionality.
            # I did try my best to optimize it. It may be looked as bad, but...
            # I have managed to drastically decrease the number of iterations.
            # From some hundreds to about 1-2.
            these_indices.clear()
            speedy_crutch = -1
            for pos, offset in sorted_offset:
                speedy_crutch += 1
                if pointer == offset:
                    these_indices.append(speedy_crutch)
                    if self._debug:
                        out_file.write("#2-{} {}\n".format(pos, pointer))
                    else:
                        out_file.write("#2-{}\n".format(pos))
                    break
                elif pointer > offset:
                    break
            for used in these_indices:
                sorted_offset.pop(used)
                search_offset.pop(used)
            for offset in second_offsets:  # Should be fine since it is rare and not lengthy.
                if pointer == offset:
                    if self._debug:
                        out_file.write("#3 {}\n".format(pointer))
                    else:
                        out_file.write("#3\n")
                    break

            # Commands functionality.

            current_byte = in_file.read(1)
            if current_byte == b'':
                break
            current_byte = current_byte[0]
            args.append([])
            commands.append(current_byte)
            analyzer = str(hex(current_byte))[2:]
            if (len(analyzer) == 1):
                analyzer = '0' + analyzer

            lib_index = -1
            for i in range(len(self.command_library[self.version])):
                if current_byte == self.command_library[self.version][i][0]:
                    lib_index = i
                    break
            if lib_index != -1:
                if stringer != '':
                    stringer = stringer.lstrip(' ')
                    stringer = '#0-{}\n'.format(stringer)
                    out_file.write(stringer)
                    stringer = ''

                out_file.write("#1-")
                if self.command_library[self.version][lib_index][2] == '':
                    out_file.write(analyzer)
                else:
                    if self.command_library[self.version][lib_index][2] == 'STR_CRYPT':
                        out_file.write('STR_UNCRYPT')
                    else:
                        out_file.write(self.command_library[self.version][lib_index][2])
                if self._debug:
                    out_file.write(' {}\n'.format(pointer))
                else:
                    out_file.write('\n')

                arguments_list = self.get_args(in_file, self.command_library[self.version][lib_index][1], current_byte, self.encoding)

                what_index = -1
                for entry_pos, offsets_entry in enumerate(self.offsets_library[self.version]):
                    if current_byte == offsets_entry[0]:
                        what_index = entry_pos

                if what_index != -1:
                    first_indexer = self.offsets_library[self.version][what_index][1]
                    evil_offset = self.get_true_offset(arguments_list[first_indexer])
                    indexer = initial_search_offset.index(evil_offset)
                    arguments_list[first_indexer] = initial_sorted_offset[indexer][0]

                if self.command_library[self.version][lib_index][0] == 0x17:
                    arguments_list[0] = "*MESSAGE_NUMBER*"
                json.dump(arguments_list, out_file, ensure_ascii=False, indent=4)
                out_file.write('\n')

            else:
                stringer += ' ' + analyzer
                pointer += 1
        if stringer != '':  # Print remaining free bytes.
            stringer = stringer.lstrip(' ')
            stringer = '#0-' + stringer
            out_file.write(stringer)

        out_file.close()

    def _diss_other_offsets(self) -> None:
        """Disassemble other offsets from the Silky Engine script."""
        pointer = self.get_true_offset(0)
        in_file = open(self._mes_name, 'rb')
        in_file.seek(pointer, 0)

        if self._hackerman_mode:
            out_file = open("HACK.txt", 'w', encoding=self.encoding)
            if self.version == 0:
                out_file.write("{}\n".format(self._header_str[1]))

        while True:
            pointer = in_file.tell()
            current_byte = in_file.read(1)
            if current_byte == b'':
                break
            current_byte = current_byte[0]  # Get int from byte in the fastest way possible.
            lib_index = -1
            for i in range(len(self.command_library[self.version])):
                if (current_byte == self.command_library[self.version][i][0]):
                    lib_index = i
                    break
            if lib_index != -1:
                arguments_list = self.get_args(in_file, self.command_library[self.version][lib_index][1], current_byte,
                                               self.encoding)

                if self._hackerman_mode:
                    out_file.write("#1-{}    {}\n".format(hex(current_byte), pointer))
                    out_file.write(str(arguments_list))
                    out_file.write("\n")

                what_index = -1
                for entry_pos, offsets_entry in enumerate(self.offsets_library[self.version]):
                    if current_byte == offsets_entry[0]:
                        what_index = entry_pos
                if what_index != -1:
                    not_here = True
                    good_offset = self.get_true_offset(arguments_list[self.offsets_library[self.version][what_index][1]])
                    for i in range(len(self._offsets)):
                        if good_offset == self._offsets[i]:
                            not_here = False
                    if not_here:
                        self._offsets.append(good_offset)
            else:
                if self._hackerman_mode:
                    out_file.write("#0-{}    {}\n".format(hex(current_byte), pointer))

        in_file.close()
        if self._hackerman_mode:
            out_file.close()

    def _diss_header(self) -> tuple:
        """Disassemble Silky Engine mes header."""
        if self.version == 0:
            with open(self._mes_name, 'rb') as mes_file:
                script_start_offset = struct.unpack("H", mes_file.read(2))[0]
                new_string = mes_file.read(script_start_offset - 2).decode(self.encoding)
                return script_start_offset, new_string
        else:
            first_offsets = []
            with open(self._mes_name, 'rb') as mes_file:
                prm = list(struct.unpack('I', mes_file.read(4)))
                for i in range(prm[0]):
                    first_offsets.append(struct.unpack('I', mes_file.read(4))[0])

            return prm, first_offsets

    # Offsets methods.

    def get_true_offset(self, raw_offset: int) -> int:
        """Get true offset (as it is factically in the file)."""
        if self.version == 0:
            return raw_offset + self._header_str[0]
        elif self.version < self.header_version_threshold:
            return raw_offset
        else:
            return raw_offset + self._prm[0] * 4 + 4

    def set_true_offset(self, raw_offset):
        """Set true offset (as it is factically in the arguments)."""
        if self.version == 0:
            return raw_offset - self._header_str[0]
        elif self.version < self.header_version_threshold:
            return raw_offset
        else:
            return raw_offset - self._prm[0] * 4 - 4

    # Structure packing technical methods.

    @staticmethod
    def read_args_string(input_file) -> str:
        """Read string of the arguments."""
        out_string = ''
        while True:
            new_string = input_file.readline()
            out_string += new_string
            stripper_string = new_string.rstrip()
            if stripper_string == ']' or stripper_string == '[]':
                break
        return out_string

    @staticmethod
    def set_args(argument_list: list, args: str, current_encoding: str) -> bytes:
        """Pack arguments structures."""
        args_bytes = b''
        appendix = ""
        current_argument = 0
        for argument in args:  # self.command_library[self.version][lib_index][1]
            if argument in AI5WINScript.technical_instances:
                appendix = argument
                continue

            # argument number changing.

            if argument in AI5WINScript.set_I.instances:
                args_bytes += AI5WINScript.set_I(argument_list[current_argument], appendix+argument)
            elif argument in AI5WINScript.set_H.instances:
                args_bytes += AI5WINScript.set_H(argument_list[current_argument], appendix+argument)
            elif argument in AI5WINScript.set_B.instances:
                args_bytes += AI5WINScript.set_B(argument_list[current_argument], appendix+argument)
            elif argument in AI5WINScript.set_S.instances:
                args_bytes += AI5WINScript.set_S(argument_list[current_argument], current_encoding)
            elif argument in AI5WINScript.set_6.instances:
                args_bytes += AI5WINScript.set_6(argument_list[current_argument], current_encoding)
            elif argument in AI5WINScript.set_C.instances:
                args_bytes += AI5WINScript.set_C(argument_list[current_argument], current_encoding)
            elif argument in AI5WINScript.set_V.instances:
                args_bytes += AI5WINScript.set_V(argument_list[current_argument], current_encoding)
            elif argument in AI5WINScript.set_G.instances:
                args_bytes += AI5WINScript.set_G(argument_list[current_argument], current_encoding)
            elif argument in AI5WINScript.set_F.instances:
                result = AI5WINScript.set_F(argument_list[current_argument])
                args_bytes += result
                if result == b'':  # Stop flag.
                    break
            current_argument += 1  # Since argument may not change with new command.

        return args_bytes

    @staticmethod
    def set_S(arguments: str, encoding: str) -> bytes:
        """Pack string code structure from AI5WIN scripts."""
        arg_bytes = arguments.encode(encoding)

        for special_symbol in AI5WINScript.special_symbols_library:
            arg_bytes = arg_bytes.replace(special_symbol[1], special_symbol[0])

        arg_bytes += b'\x00'
        return arg_bytes

    @staticmethod
    def set_6(arguments: str, encoding: str) -> bytes:
        """Pack 6-string code structure from AI5WIN scripts."""
        arg_bytes = arguments.encode(encoding)

        for special_symbol in AI5WINScript.special_symbols_library:
            arg_bytes = arg_bytes.replace(special_symbol[1], special_symbol[0])

        arg_bytes += b'\x06'
        return arg_bytes

    @staticmethod
    def set_F(argument: str) -> bytes:
        """Pack F-structure from AI5WIN scripts."""
        out_bytes = b''
        if argument == AI5WINScript.cont_def:
            out_bytes += b'\x00'
        return out_bytes

    @staticmethod
    def set_C(argument_list: list, current_encoding: str) -> bytes:
        """Pack "code structure" AI5WIN's data structure."""
        out_bytes = b''

        argument_list.pop(0)  # "STRUCT"
        arg_num = 0
        while arg_num < len(argument_list):
            this_command = argument_list[arg_num]
            arg_num += 1
            if this_command == "RAW":
                out_bytes += struct.pack('B', argument_list[arg_num])
            else:
                this_index = -1
                for num, struct_entry in enumerate(AI5WINScript.struct_library):
                    if this_command == struct_entry[2]:
                        this_index = num
                        break
                if this_index == -1:
                    this_command_int = int(this_command, 16)
                    for num, struct_entry in enumerate(AI5WINScript.struct_library):
                        if this_command_int == struct_entry[0]:
                            this_index = num
                            break

                if this_index == -1:
                    raise AI5WINScriptError("There is no such structure: {}!".format(this_command))

                out_bytes += struct.pack('B', AI5WINScript.struct_library[this_index][0])
                struct_args = AI5WINScript.struct_library[this_index][1]
                out_bytes += AI5WINScript.set_args(
                    argument_list[arg_num],
                    struct_args,
                    current_encoding)

                if this_command == "STRUCT_END":
                    break
            arg_num += 1

        return out_bytes

    @staticmethod
    def set_V(argument_list: list, current_encoding: str) -> bytes:
        """Pack "variable data" AI5WIN's data structure."""
        out_bytes = b''
        argument_list.pop(0)  # "VARIABLE".
        current_arg = 0

        while current_arg < len(argument_list):
            this_type = argument_list[current_arg]
            current_arg += 1
            this_filler = argument_list[current_arg]
            current_arg += 1
            if this_type == "NAME":
                out_bytes += struct.pack('B', 1)
                out_bytes += AI5WINScript.set_args(
                    this_filler,
                    'S',
                    current_encoding)
            elif this_type == "EXPRESSION":
                out_bytes += struct.pack('B', 2)
                out_bytes += AI5WINScript.set_args(
                    this_filler,
                    'C',
                    current_encoding)
            else:
                raise AI5WINScriptError("Incorrect variable operation: {}!".format(this_type))

        out_bytes += b'\x00'
        return out_bytes

    @staticmethod
    def set_G(argument_list, current_encoding) -> bytes:
        """Pack "group of code structures" AI5WIN's data structure."""
        out_bytes = b''
        argument_list.pop(0)  # "GROUP".

        for expression in argument_list:
            out_bytes += b'\x01'
            out_bytes += AI5WINScript.set_args(
                expression,
                'C',
                current_encoding)

        out_bytes += b'\x00'
        return out_bytes

    # Structure extraction technical methods.

    @staticmethod
    def get_args(in_file, args: str, current_byte, current_encoding: str) -> list:
        """Extract arguments from the file."""
        arguments_list = []
        appendix = ""
        for argument in args:  # self.command_library[self.version][lib_index][1]
            if argument in AI5WINScript.technical_instances:
                appendix = argument
            elif argument in AI5WINScript.get_I.instances:
                arguments_list.append(AI5WINScript.get_I(in_file, appendix + argument))
            elif argument in AI5WINScript.get_H.instances:
                arguments_list.append(AI5WINScript.get_H(in_file, appendix + argument))
            elif argument in AI5WINScript.get_B.instances:
                arguments_list.append(AI5WINScript.get_B(in_file, appendix + argument))
            elif argument in AI5WINScript.get_S.instances:
                length, result = AI5WINScript.get_S(current_byte, in_file, current_encoding)
                arguments_list.append(result)
            elif argument in AI5WINScript.get_6.instances:
                length, result = AI5WINScript.get_6(current_byte, in_file, current_encoding)
                arguments_list.append(result)
            elif argument in AI5WINScript.get_R.instances:
                length, result = AI5WINScript.get_R(current_byte, in_file, current_encoding)
                arguments_list.append(result)
            elif argument in AI5WINScript.get_C.instances:
                result = AI5WINScript.get_C(in_file, current_byte, current_encoding)
                arguments_list.append(result)
            elif argument in AI5WINScript.get_c.instances:
                result = AI5WINScript.get_c(in_file, current_byte, current_encoding)
                arguments_list.append(result)
            elif argument in AI5WINScript.get_V.instances:
                result = AI5WINScript.get_V(in_file, current_byte, current_encoding)
                arguments_list.append(result)
            elif argument in AI5WINScript.get_G.instances:
                result = AI5WINScript.get_G(in_file, current_byte, current_encoding)
                arguments_list.append(result)
            elif argument in AI5WINScript.get_F.instances:
                result = AI5WINScript.get_F(in_file)
                arguments_list.append(result)
                if result == AI5WINScript.stop_def:
                    break
        return arguments_list

    @staticmethod
    def get_F(file_in) -> str:
        """Extract condition structure ("continue if 0")."""
        new_byte_flag = bool(file_in.read(1)[0])
        if new_byte_flag:
            file_in.seek(-1, 1)
            return AI5WINScript.stop_def
        else:
            return AI5WINScript.cont_def

    @staticmethod
    def get_C(file_in, current_byte: int, current_encoding: str) -> list:
        """Extract "code structure" AI5WIN's data structure."""
        this_struct = [AI5WINScript.struct_def]
        while True:
            struct_byte = file_in.read(1)[0]
            struct_index = - 1

            for num, struct_entry in enumerate(AI5WINScript.struct_library):
                if struct_byte == struct_entry[0]:
                    struct_index = num
                    break
            if struct_index == -1:
                this_struct.append("RAW")
                this_struct.append(struct_byte)
                continue
            else:
                if AI5WINScript.struct_library[struct_index][2] != '':
                    true_name = AI5WINScript.struct_library[struct_index][2]
                else:
                    true_name = hex(struct_byte)[2:]
                    if len(true_name) == 1:
                        true_name = "0" + true_name
                this_struct.append(true_name)

                struct_args = AI5WINScript.get_args(in_file=file_in,
                                                    args=AI5WINScript.struct_library[struct_index][1],
                                                    current_byte=current_byte,
                                                    current_encoding=current_encoding)
                this_struct.append(struct_args)

                if true_name == "STRUCT_END":
                    break
        return this_struct

    @staticmethod
    def get_c(file_in, current_byte: int, current_encoding: str) -> list:
        """Extract "ancient code structure" AI5WIN's data structure."""
        this_struct = [AI5WINScript.ancient_struct_def]
        struct_byte = file_in.read(1)[0]
        struct_index = - 1

        for num, struct_entry in enumerate(AI5WINScript.ancient_struct_library):
            if struct_byte == struct_entry[0]:
                struct_index = num
                break
        if struct_index == -1:
            this_struct.append("RAW")
            this_struct.append(struct_byte)
        else:
            if AI5WINScript.ancient_struct_library[struct_index][2] != '':
                true_name = AI5WINScript.ancient_struct_library[struct_index][2]
            else:
                true_name = hex(struct_byte)[2:]
                if len(true_name) == 1:
                    true_name = "0" + true_name
            this_struct.append(true_name)
            struct_args = AI5WINScript.get_args(in_file=file_in,
                                                args=AI5WINScript.ancient_struct_library[struct_index][1],
                                                current_byte=current_byte,
                                                current_encoding=current_encoding)
            this_struct.append(struct_args)
        return this_struct

    @staticmethod
    def get_V(in_file, current_byte: int, current_encoding: str) -> list:
        """Extract "variable data" AI5WIN's data structure."""
        this_vars = [AI5WINScript.var_def]
        while True:
            definer = in_file.read(1)[0]
            if definer == 0:
                break
            elif definer == 1:
                this_vars.append("NAME")
                new_arg = AI5WINScript.get_args(in_file=in_file,
                                                args="S",
                                                current_byte=current_byte,
                                                current_encoding=current_encoding)
                this_vars.append(new_arg)
            elif definer == 2:
                this_vars.append("EXPRESSION")
                new_arg = AI5WINScript.get_args(in_file=in_file,
                                                args="C",
                                                current_byte=current_byte,
                                                current_encoding=current_encoding)
                this_vars.append(new_arg)
            else:
                raise AI5WINScriptError("Incorrect variable definer: {}!".format(definer))

        return this_vars

    @staticmethod
    def get_G(in_file, current_byte: int, current_encoding: str):
        """Extract "group of code structures" AI5WIN's data structure."""
        grouper = [AI5WINScript.group_def]
        while True:
            continue_flag = in_file.read(1)[0]
            if continue_flag:
                new_arg = AI5WINScript.get_args(in_file=in_file,
                                                args="C",
                                                current_byte=current_byte,
                                                current_encoding=current_encoding)
                grouper.append(new_arg)
            else:
                break
        return grouper

    @staticmethod
    def get_S(mode: int, in_file, encoding: str) -> tuple:
        """Get string from the mode and input file (pointer at the start of stirng)."""
        length = 0
        string = b''
        byte = in_file.read(1)
        while byte != b'\x00':
            string += byte
            length += 1
            byte = in_file.read(1)

        # Specsymbols managing.

        for special_symbol in AI5WINScript.special_symbols_library:
            string = string.replace(special_symbol[0], special_symbol[1])

        try:
            return length, string.decode(encoding)
        except UnicodeDecodeError:
            print("Decode error:", string)
            return length, string
        
    @staticmethod
    def get_R(mode: int, in_file, encoding: str) -> tuple:
        """Get crypto string from the mode and input file (pointer at the start of string)."""
        length = 0
        string = b''
        byte = in_file.read(1)
        while byte != b'\x11':
            string += byte
            length += 1
            byte = in_file.read(1)

        # TODO: DELETE!
        string = b'\xe5' + string

        list_bytes = string.hex(' ').split(' ')
        string = b''
        i = 0
        while i < len(list_bytes):
            number = int(list_bytes[i], 16)
            if number < 0x81:
                zlo = number - 0x7D62
                high = (zlo & 0xff00) >> 8
                low = zlo & 0xff
                marbas = str(hex(high))[2:]
                if len(marbas) == 1:
                    marbas = "0" + marbas
                string += byte.fromhex(marbas)
                marbas = str(hex(low))[2:]
                if len(marbas) == 1:
                    marbas = "0" + marbas
                string += byte.fromhex(marbas)
                i += 1
            else:
                high = int(list_bytes[i], 16)
                marbas = str(hex(high))[2:]
                if len(marbas) == 1:
                    marbas = "0" + marbas
                string += byte.fromhex(marbas)
                if (i + 1) < len(list_bytes):
                    i += 1
                    low = int(list_bytes[i], 16)
                    marbas = str(hex(low))[2:]
                    if len(marbas) == 1:
                        marbas = "0" + marbas
                    string += byte.fromhex(marbas)
                i += 1
        try:
            return length, (string.decode(encoding))
        except UnicodeDecodeError:
            print("Decode error:", string)
            return length, string.hex(' ')

        #for special_symbol in AI5WINScript.special_symbols_library:
        #    string = string.replace(special_symbol[0], special_symbol[1])

    @staticmethod
    def get_6(mode: int, in_file, encoding: str) -> tuple:
        """Get 6-string from the mode and input file (pointer at the start of stirng)."""
        length = 0
        string = b''
        byte = in_file.read(1)
        while byte != b'\x06':
            string += byte
            length += 1
            byte = in_file.read(1)

        # Specsymbols managing.

        for special_symbol in AI5WINScript.special_symbols_library:
            string = string.replace(special_symbol[0], special_symbol[1])

        try:
            return length, string.decode(encoding)
        except UnicodeDecodeError:
            print("Decode error:", string)
            return length, string


class AI5WINScriptError(SilkyMesScriptError):
    pass
