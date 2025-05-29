import struct
import os
import json


class SilkyMesScript:
    default_encoding = "cp932"
    technical_instances = (">", "<")

    # [Opcode, struct, name].
    command_library = (
        (0x00, '', 'NULL'),
        (0x01, 'I', ''),  # Found only in LIBLARY.LIB
        (0x02, '', ''),
        (0x03, '', ''),  # Found only in LIBLARY.LIB
        (0x04, '', ''),
        (0x05, '', ''),
        (0x06, '', ''),  # Found only in LIBLARY.LIB

        (0x0A, 'S', 'STR_CRYPT'),
        (0x0B, 'S', 'STR_UNCRYPT'),
        (0x0C, '', ''),
        (0x0D, '', ''),
        (0x0E, '', ''),
        (0x0F, '', ''),

        (0x10, 'B', ''),
        (0x11, '', ''),
        (0x14, '>I', 'JUMP'),
        (0x15, '>I', 'MSG_OFSETTER'),
        (0x16, '>I', 'SPEC_OFSETTER'),  # Found only in LIBLARY.LIB
        (0x17, '', ''),
        (0x18, '', ''),
        (0x19, '>I', 'MESSAGE'),
        (0x1A, '>I', ''),
        (0x1B, '>I', ''),
        (0x1C, 'B', 'TO_NEW_STRING'),

        (0x32, '>hh', ''),
        (0x33, 'S', 'STR_RAW'),
        (0x34, '', ''),
        (0x35, '', ''),
        (0x36, 'B', 'JUMP_2'),
        (0x37, '', ''),
        (0x3A, '', ''),
        (0x3B, '', ''),
        (0x3C, '', ''),
        (0x3D, '', ''),
        (0x3E, '', ''),

        (0x42, '', ''),
        (0x43, '', ''),

        (0xFA, '', ''),
        (0xFB, '', ''),
        (0xFC, '', ''),
        (0xFD, '', ''),
        (0xFE, '', ''),
        (0xFF, '', ''),
    )
    offsets_library = (
        (0x14, 0),
        (0x15, 0),
        (0x16, 0),
        (0x1b, 0),
    )

    def __init__(self, mes_name: str, txt_name: str, encoding: str = "", debug: bool = False, verbose: bool = False,
                 hackerman_mode: bool = False):
        """Prms:
mes_name -- name (and path) of mes script.
txt_name -- name (and path) of txt file.
encoding (not required) -- name of encoding.
debug -- push debug data in the script.
verbose -- print data about the class operations.
hackerman_mode -- for true hackers; helps hacking unsupported mes scripts."""
        self._verbose = verbose
        if encoding == "":
            self.encoding = self.default_encoding
        else:
            self.encoding = encoding
        self._hackerman_mode = hackerman_mode
        self._debug = debug  # For printing debug info, such as commands offsets.
        self._mes_name = mes_name  # Name of mes script file (with path).
        self._txt_name = txt_name  # Name of txt file (with path).
        self._prm = [0, 0]  # Parameters of mes script. # [Header entries number, padding???]
        self._offsets = []  # Offsets of mes script.
        self._first_offsets = []  # Offsets in the first section of header of mes script.
        self._second_offsets = []  # Offsets in the second section of header of mes script.

        self.get_I.instances = ("I", "i")
        self.get_H.instances = ("H", "h")
        self.get_B.instances = ("B", "b")
        self.get_S.instances = ("S",)
        self.set_I.instances = self.get_I.instances
        self.set_H.instances = self.get_H.instances
        self.set_B.instances = self.get_B.instances
        self.set_S.instances = self.get_S.instances

    # User methods.

    def disassemble(self) -> None:
        """Disassemble Silky Engine mes script."""
        self._offsets = []
        self._prm, self._first_offsets, self._second_offsets = self._diss_header()
        self._diss_other_offsets()
        if self._verbose:
            print("Parameters:", self._prm)
            print("First offsets:", len(self._first_offsets), self._first_offsets)
            print("Second offsets:", len(self._second_offsets), self._second_offsets)
            print("True offsets:", len(self._offsets), self._offsets)
        self._disassemble_commands()

    def assemble(self) -> None:
        """Assemble Silky Engine mes script."""

        self._prm, self._first_offsets, self._second_offsets, self._offsets = self._assemble_offsets_and_parameters()

        if self._verbose:
            print("Parameters:", self._prm)
            print("First offsets:", self._first_offsets)
            print("True offsets:", self._offsets)
        self._assemble_script_file()

    # Technical methods for assembling.

    def _assemble_script_file(self) -> None:
        in_file = open(self._txt_name, 'r', encoding=self.encoding)
        try:
            os.rename(self._mes_name, self._mes_name + '.bak')
        except OSError:
            pass
        out_file = open(self._mes_name, 'wb')

        message_count = 0
        search_offset = [i[0] for i in self._offsets]

        for parameter in self._prm:
            out_file.write(struct.pack('I', parameter))
        for first_offset in self._first_offsets:
            out_file.write(struct.pack('I', first_offset))
        for second_offset in self._second_offsets:
            out_file.write(struct.pack('I', second_offset))

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
                for num, lib_entry in enumerate(self.command_library):  # Check if it is written by name.
                    if command_string == lib_entry[2]:
                        command_index = num
                        break
                if command_index == -1:  # Check if it is written by hex.
                    command_string = int(command_string, 16)
                    for num, lib_entry in enumerate(self.command_library):
                        if command_string == lib_entry[0]:
                            command_index = num
                            break
                if command_index == -1:  # There is no such command (text). But this should be impossible!
                    raise SilkyMesScriptError("Error! There is no such command.\n{}".format(command_string))
                out_file.write(struct.pack('B', self.command_library[command_index][0]))

                line = in_file.readline()

                argument_list = json.loads(line)

                this_command = self.command_library[command_index][0]
                offset_set = -1
                if this_command == 0x19:
                    argument_list[0] = message_count
                    message_count += 1
                else:
                    for offset_entry in self.offsets_library:
                        if this_command == offset_entry[0]:
                            offset_set = offset_entry[1]
                            break

                if offset_set != -1:
                    indexer = search_offset.index(argument_list[offset_set])
                    argument_list[offset_set] = self._offsets[indexer][1]

                argument_bytes = self.set_args(argument_list, self.command_library[command_index][1], self.encoding)
                out_file.write(argument_bytes)

        in_file.close()
        out_file.close()

    def _assemble_offsets_and_parameters(self) -> tuple:
        """Assemble offsets and parameters of Silky Engine's mes archive."""
        in_file = open(self._txt_name, 'r', encoding=self.encoding)

        first_offsets = []
        second_offsets = []
        offsets = []
        prm = [0, 0]  # First shall be changed.

        pointer = 0
        message_count = 0

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
                for num, lib_entry in enumerate(self.command_library):  # Check if it is written by name.
                    if command_string == lib_entry[2]:
                        command_index = num
                        break
                if command_index == -1:  # Check if it is written by hex.
                    command_string = int(command_string, 16)
                    for num, lib_entry in enumerate(self.command_library):
                        if command_string == lib_entry[0]:
                            command_index = num
                            break
                if command_index == -1:  # There is no such command (text). But this should be impossible!
                    raise SilkyMesScriptError("Error! There is no such command.\n{}".format(command_string))

                if self.command_library[command_index][0] == 0x19:  # Since header save offsets to messages.
                    message_count += 1
                    first_offsets.append(pointer)

                pointer += 1

                # Okay, now is the time for getting arguments length!
                line = in_file.readline()
                argument_list = json.loads(line)
                if self.command_library[command_index][0] == 0x19:  # For this to not cause any errors.
                    argument_list[0] = 0
                argument_bytes = self.set_args(argument_list, self.command_library[command_index][1], self.encoding)
                pointer += len(argument_bytes)

            elif line[1] == '2':  # If label (of true offset).
                offset_array = []

                offset_number = int(line[3:-1])
                offset_array.append(offset_number)
                offset_array.append(pointer)

                offsets.append(offset_array)

            elif line[1] == '3':  # If special header's label.
                second_offsets.append(pointer)
        in_file.close()

        prm[0] = message_count
        prm[1] = len(second_offsets)

        return prm, first_offsets, second_offsets, offsets

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
            for i in range(len(self.command_library)):
                if current_byte == self.command_library[i][0]:
                    lib_index = i
                    break
            if lib_index != -1:
                if stringer != '':
                    stringer = stringer.lstrip(' ')
                    stringer = '#0-{}\n'.format(stringer)
                    out_file.write(stringer)
                    stringer = ''

                out_file.write("#1-")
                if self.command_library[lib_index][2] == '':
                    out_file.write(analyzer)
                else:
                    if self.command_library[lib_index][2] == 'STR_CRYPT':
                        out_file.write('STR_UNCRYPT')
                    else:
                        out_file.write(self.command_library[lib_index][2])
                if self._debug:
                    out_file.write(' {}\n'.format(pointer))
                else:
                    out_file.write('\n')

                arguments_list = self.get_args(in_file, self.command_library[lib_index][1], current_byte, self.encoding)

                what_index = -1
                for entry_pos, offsets_entry in enumerate(self.offsets_library):
                    if current_byte == offsets_entry[0]:
                        what_index = entry_pos

                if what_index != -1:
                    first_indexer = self.offsets_library[what_index][1]
                    evil_offset = self.get_true_offset(arguments_list[first_indexer])
                    indexer = initial_search_offset.index(evil_offset)
                    arguments_list[first_indexer] = initial_sorted_offset[indexer][0]

                if self.command_library[lib_index][0] == 0x19:
                    arguments_list[0] = "*MESSAGE_NUMBER*"
                json.dump(arguments_list, out_file, ensure_ascii=False)
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

        while True:
            pointer = in_file.tell()
            current_byte = in_file.read(1)
            if current_byte == b'':
                break
            current_byte = current_byte[0]  # Get int from byte in the fastest way possible.
            lib_index = -1
            for i in range(len(self.command_library)):
                if (current_byte == self.command_library[i][0]):
                    lib_index = i
                    break
            if lib_index != -1:
                arguments_list = self.get_args(in_file, self.command_library[lib_index][1], current_byte,
                                               self.encoding)

                if self._hackerman_mode:
                    out_file.write("#1-{}    {}\n".format(hex(current_byte), pointer))
                    out_file.write(str(arguments_list))
                    out_file.write("\n")

                what_index = -1
                for entry_pos, offsets_entry in enumerate(self.offsets_library):
                    if current_byte == offsets_entry[0]:
                        what_index = entry_pos
                if what_index != -1:
                    not_here = True
                    good_offset = self.get_true_offset(arguments_list[self.offsets_library[what_index][1]])
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
        first_offsets = []
        second_offsets = []
        with open(self._mes_name, 'rb') as mes_file:
            prm = list(struct.unpack('II', mes_file.read(8)))
            for i in range(prm[0]):
                first_offsets.append(struct.unpack('I', mes_file.read(4))[0])
            for i in range(prm[1]):
                second_offsets.append(struct.unpack('I', mes_file.read(4))[0])

        return prm, first_offsets, second_offsets

    # Offsets methods.

    def get_true_offset(self, raw_offset: int) -> int:
        """Get true offset (as it is factically in the file)."""
        return raw_offset + self._prm[0] * 4 + self._prm[1] * 4 + 8

    def set_true_offset(self, raw_offset):
        """Set true offset (as it is factically in the arguments)."""
        return raw_offset - self._prm[0] * 4 - self._prm[1] * 4 - 8

    # Structure packing technicals methods.

    @staticmethod
    def set_args(argument_list, args: str, current_encoding: str) -> bytes:
        args_bytes = b''
        appendix = ""
        current_argument = 0
        for argument in args:  # self.command_library[lib_index][1]
            if argument in SilkyMesScript.technical_instances:
                appendix = argument
                continue

            # argument number changing.

            if argument in SilkyMesScript.set_I.instances:
                args_bytes += SilkyMesScript.set_I(argument_list[current_argument], appendix+argument)
            elif argument in SilkyMesScript.set_H.instances:
                args_bytes += SilkyMesScript.set_H(argument_list[current_argument], appendix+argument)
            elif argument in SilkyMesScript.set_B.instances:
                args_bytes += SilkyMesScript.set_B(argument_list[current_argument], appendix+argument)
            elif argument in SilkyMesScript.set_S.instances:
                args_bytes += SilkyMesScript.set_S(argument_list[current_argument], current_encoding)
            current_argument += 1  # Since argument may not change with new command.

        return args_bytes

    @staticmethod
    def set_B(arguments: int, command: str) -> bytes:
        return struct.pack(command, arguments)

    @staticmethod
    def set_H(arguments: int, command: str) -> bytes:
        return struct.pack(command, arguments)

    @staticmethod
    def set_I(arguments: int, command: str) -> bytes:
        return struct.pack(command, arguments)

    @staticmethod
    def set_S(arguments: str, encoding: str) -> bytes:
        arg_bytes = arguments.encode(encoding) + b'\x00'
        return arg_bytes

    # Structure extraction technical methods.

    @staticmethod
    def get_args(in_file, args: str, current_byte: int, current_encoding: str) -> list:
        arguments_list = []
        appendix = ""
        for argument in args:  # self.command_library[lib_index][1]
            if argument in SilkyMesScript.technical_instances:
                appendix = argument
            elif argument in SilkyMesScript.get_I.instances:
                arguments_list.append(SilkyMesScript.get_I(in_file, appendix+argument))
            elif argument in SilkyMesScript.get_H.instances:
                arguments_list.append(SilkyMesScript.get_H(in_file, appendix+argument))
            elif argument in SilkyMesScript.get_B.instances:
                arguments_list.append(SilkyMesScript.get_B(in_file, appendix+argument))
            elif argument in SilkyMesScript.get_S.instances:
                leng, result = SilkyMesScript.get_S(current_byte, in_file, current_encoding)
                arguments_list.append(result)
        return arguments_list

    @staticmethod
    def get_B(file_in, definer: str) -> int:
        """Extract B/b structure."""
        dummy = struct.unpack(definer, file_in.read(1))[0]
        return dummy

    @staticmethod
    def get_H(file_in, definer: str) -> int:
        """Extract H/h structure."""
        dummy = struct.unpack(definer, file_in.read(2))[0]
        return dummy

    @staticmethod
    def get_I(file_in, definer: str) -> int:
        """Extract I/i structure."""
        dummy = struct.unpack(definer, file_in.read(4))[0]
        return dummy

    @staticmethod
    def get_S(mode: int, in_file, encoding: str) -> tuple:
        """Get string from the mode and input file (pointer at the start of stirng)."""
        # 0x0A, 0x0B, 0x33.
        length = 0
        string = b''
        byte = in_file.read(1)
        while byte != b'\x00':
            string += byte
            length += 1
            byte = in_file.read(1)
        
        if mode == 0x0A:
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
        elif (mode == 0x33) or (mode == 0x0B):
            try:
                return length, string.decode(encoding)
            except UnicodeDecodeError:
                print("Decode error:", string)
                return length, string
        else:
            return length, string


class SilkyMesScriptError(Exception):
    def __init__(self, message: str):
        self.message = message
        super().__init__(message)
