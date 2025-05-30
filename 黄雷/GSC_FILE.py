import struct
#from tkinter import *
#from tkinter import messagebox as mb

class GscFile:
    FileName = ''
    #По умолчанию оный открыт, но можно закрыть и переделать на зпись.
    FileParametrs = []
    #Собственно структуры для упаковки:
    FileStruct = [b'', b'', b'', b'', b'']
    #Строки:
    FileStringOffsets = []
    FileStrings = []
    #Команды:
    CommandArgs = []
    #Двумерный массив, где глубинные есть массивы аргументов конкретной команды.
    Commands = []
    #Просто массив основных команд.
    CommandsLibrary = ((0x03, 'i', 'JUMP_UNLESS'),
                       (0x05, 'i', 'JUMP'),
                       (0x0D, 'i', 'PAUSE'),
                       (0x0C, 'ii', 'CALL_SCRIPT'), #[имя скрипта без начальных нулей, ???]
                       (0x0E, 'hiiiiiiiiiiiiii', 'CHOICE'),
                       (0x14, 'ii', 'IMAGE_GET'),
                       (0x1A, '', 'IMAGE_SET'),
                       (0x1C, 'iii', 'BLEND_IMG'),
                       (0x1E, 'iiiiii', 'IMAGE_DEF'),
                       (0x51, 'iiiiiii', 'MESSAGE'),
                       (0x52, 'iiiiii', 'APPEND_MESSAGE'),
                       (0x53, 'i', 'CLEAR_MESSAGE_WINDOW'),
                       (0x79, 'ii', 'GET_DIRECTORY'),
                       (0xC8, 'iiiiiiiiiii', 'READ_SCENARIO'), #??? Подправить число аргументов?
                       (0xFF, 'iiiii', 'SPRITE'),
                       (0x3500, 'hhh', 'AND'),
                       (0x4800, 'hhh', 'EQUALS'),
                       (0x5400, 'hhh', 'GREATER_EQUALS'),
                       (0xAA00, 'hhh', 'ADD'),
                       (0xF100, 'hh', 'ASSIGN'),
                       (0x04, 'i', ''),
                       (0x08, '', ''),
                       (0x09, 'h', ''),
                       (0x0A, '', ''), #h в другом типе? Хм-м... #WAIT_FOR_CLICK?
                       (0x0B, '', ''),
                       (0x0F, 'iiiiiiiiiiii', ''), #??? #Массив? Подправить число аргументов?
                       (0x10, 'i', ''),
                       (0x11, '', ''),
                       (0x12, 'ii', ''),
                       (0x13, 'i', ''),
                       (0x15, 'i', ''),
                       (0x16, 'iiii', ''),
                       (0x17, 'iiii', ''),
                       (0x18, 'ii', ''),
                       (0x19, 'ii', ''),
                       (0x1B, '', ''),
                       (0x1D, 'ii', ''),
                       (0x20, 'iiiiii', ''),
                       (0x21, 'iiiii', ''),
                       (0x22, 'iiiii', ''),
                       (0x23, 'ii', ''),
                       (0x24, 'ii', ''),
                       (0x25, 'ii', ''),
                       (0x26, 'iii', ''), #Принцесса порчи: iii, остальное: iiii?
                       (0x27, 'iii', ''),
                       (0x28, 'ii', ''),
                       (0x29, 'ii', ''),
                       (0x2A, 'ii', ''),
                       (0x2B, 'ii', ''),
                       (0x2C, 'i', ''),
                       (0x2D, 'ii', ''),
                       (0x2E, 'i', ''),
                       (0x2F, 'ii', ''),
                       (0x30, 'ii', ''), #Принцесса порчи: ii, остальное: iii?
                       (0x31, 'ii', ''),
                       (0x32, '', ''),
                       (0x33, '', ''),
                       (0x34, '', ''),
                       (0x35, 'i', ''),
                       (0x37, '', ''),
                       (0x38, 'iiiii', ''),
                       (0x39, '', ''),
                       (0x3A, '', ''),
                       (0x3B, 'iiii', ''),
                       (0x3C, 'iii', ''),
                       (0x3D, 'ii', ''),
                       (0x3E, 'i', ''), #'i'? По D&D 'ii'.
                       (0x3F, 'iii', ''), #'iii'? По D&D 'iiii'.
                       (0x40, 'i', ''), #'i'? По D&D 'ii'.
                       (0x41, 'i', ''),
                       (0x42, 'iiii', ''),
                       (0x43, 'i', ''),
                       (0x44, '', ''),
                       (0x45, '', ''),
                       (0x46, 'iiii', ''),
                       (0x47, 'iiii', ''),
                       (0x48, 'i', ''),
                       (0x49, 'iii', ''),
                       (0x4A, 'i', ''),
                       (0x4B, 'iiiii', ''),
                       (0x4D, 'iiii', ''),
                       (0x50, 'i', ''),
                       (0x5A, 'iii', ''),
                       (0x5B, 'iiiii', ''),
                       (0x5C, 'ii', ''),
                       (0x5D, 'ii', ''),
                       (0x5E, 'i', ''),
                       (0x5F, 'ii', ''),
                       (0x60, 'ii', ''),
                       (0x61, 'ii', ''),
                       (0x62, 'ii', ''),
                       (0x63, 'iii', ''),
                       (0x64, 'iii', ''),
                       (0x65, 'ii', ''),
                       (0x66, 'i', ''),
                       (0x67, 'ii', ''),
                       (0x68, 'iiii', ''),
                       (0x69, 'i', ''), #В остальных ii?
                       (0x6A, 'iiiii', ''),#TEMP!
                       (0x6B, 'iii', ''), #TEMP!
                       (0x6C, 'iii', ''), #TEMP
                       (0x6E, 'iii', ''),
                       (0x6F, 'iii', ''),
                       (0x70, 'i', ''),
                       (0x71, 'ii', ''),
                       (0x72, 'ii', ''),
                       (0x73, 'ii', ''),
                       (0x74, 'ii', ''),
                       (0x75, 'ii', ''),
                       (0x78, 'ii', ''),
                       (0x82, 'iiii', ''),
                       (0x83, 'iiiii', ''),
                       (0x84, 'ii', ''),
                       (0x86, 'iii', ''),
                       (0x87, 'iiiii', ''),
                       (0x88, 'iii', ''),
                       (0x96, 'ii', ''),
                       (0x97, 'ii', ''),
                       (0x98, 'ii', ''),
                       (0x99, 'ii', ''),
                       (0x9A, 'ii', ''),
                       (0x9B, 'ii', ''),
                       (0x9E, 'ii', ''),
                       (0x9F, 'ii', ''),
                       (0x9C, 'iii', ''),
                       (0x9D, 'iiiii', ''),
                       (0xC9, 'iiiii', ''),
                       (0xCA, 'iii', ''),
                       (0xD2, 'ii', ''),
                       (0xD3, 'iiii', ''),
                       (0xD4, 'i', ''),
                       (0xD5, 'iii', ''),
                       (0xDC, 'iii', ''),
                       (0xDD, 'ii', ''),
                       (0xDE, '', ''),
                       (0xDF, 'ii', ''),
                       (0xE1, 'iiiii', ''),
                       (0xE6, 'i', ''),
                       (0xE7, 'i', ''),
                       (0x1800, 'hhh', ''),
                       (0x1810, 'hhh', ''), #!!!
                       (0x1900, 'hhh', ''),
                       (0x1910, 'hhh', ''),
                       (0x2500, 'hhh', ''),
                       (0x1A01, 'hhh', ''), #!!!
                       (0x1A00, 'hhh', ''),
                       (0x4400, 'hhh', ''),
                       (0x4810, 'hhh', ''), #!!!
                       (0x4900, 'hhh', ''),
                       (0x4A00, 'hhh', ''),
                       (0x5800, 'hhh', ''),
                       (0x6800, 'hhh', ''),
                       (0x7800, 'hhh', ''),
                       (0x7A00, 'hhh', ''),
                       (0x8800, 'hhh', ''),
                       (0x8A00, 'hhh', ''),
                       (0x9800, 'hhh', ''),
                       (0x9810, 'hhh', ''), #!!!
                       (0x9A00, 'hhh', ''),
                       (0xA100, 'hhh', ''),
                       (0xA200, 'hhh', ''),
                       (0xA201, 'hhh', ''), #!!
                       (0xA400, 'hhh', ''),
                       (0xA500, 'hhh', ''),
                       (0xA600, 'hhh', ''),
                       (0xA800, 'hhh', ''),
                       (0xA810, 'hhh', ''), #!!!
                       (0xA900, 'hhh', ''),
                       (0xB400, 'hhh', ''),
                       (0xB800, 'hhh', ''),
                       (0xB900, 'hhh', ''),
                       (0xC400, 'hhh', ''),
                       (0xC800, 'hhh', ''),
                       (0xD400, 'hhh', ''),
                       (0xD800, 'hhh', ''),
                       (0xE400, 'hhh', ''),
                       (0xE800, 'hhh', ''))
    #Библиотека команд, двумерный кортеж.
    #(n)(0) - команда;
    #(n)(1) - структура;
    #(n)(2) - определение (может быть пустым).

    ConnectedStringsLibrary = [[0x0E, [1, 7, 8, 9, 10, 11]], #Убрать 1?
                               [0x0F, [1]],
                               [0x20, [0]],
                               [0x51, [-3, -2]],
                               [0x52, [-2]],
                               [0x79, [1]]]
    #Библиотека связанных со строками аргументов.
    #(n)(0) - команда;
    #(n)(1) - список связанных аргументов.

    #Далее костыли по связанным со смещениям аргументам.

    ConnectedOffsetsLibrary = [[0x03, [0]],
                               [0x05, [0]],
                               [0x0E, [2, 3, 4, 5, 6]],
                               [0xC8, [0]]]
    Labels = []
    #[0] - индекс метки, [1] - смещение метки.
    
    def __init__(self, FileName, Mode):
        self.FileName = FileName
        if (Mode == 0):
            self.File = open(self.FileName + ".gsc", mode="rb")
        else:
            self.File = open(self.FileName + ".txt", mode="r", encoding="shift_jis")
    #Техническое отображение:
    #Чтение бинарника:
    def ReadHeader(self):
        self.File.seek(0,0)
        Kortez = struct.unpack('ii', self.File.read(8))
        for i in range(0, 2):
            self.FileParametrs.append(Kortez[i])
        Kortez = struct.unpack('iiiiiii', self.File.read(self.FileParametrs[1]-8))
        for i in range(0, len(Kortez)):
            self.FileParametrs.append(Kortez[i])
        self.File.seek(0,0)
        self.FileStruct[0] = self.File.read(self.FileParametrs[1])
    def ReadCommand(self):
        self.File.seek(self.FileParametrs[1], 0)
        Reader = 0
        CommandNumber = 0
        while (Reader < self.FileParametrs[2]):
            Kerza = []
            Reader += 2
            Code = self.File.read(2)
            Code = struct.unpack('H', Code)[0]
            SupportCode = Code & 0xf000
            DontKnow = 0
            self.CommandArgs.append([])
            DontKnow = 1
            CommandArgsStruct = ''
            for i in range(0, len(self.CommandsLibrary)):
                if (Code == self.CommandsLibrary[i][0]):
                    DontKnow = 0
                    CommandArgsStruct = self.CommandsLibrary[i][1]
                    break;
            if (DontKnow == 1): #Попробуем догадаться об аргументах из маски.
                if ((Code & 0xf000) == 0xf000):
                    CommandArgsStruct = 'hh'
                elif ((Code & 0xf000) == 0x0000):
                    CommandArgsStruct = ''
                else:
                    CommandArgsStruct = 'hhh'
            for i in CommandArgsStruct:
                if ((i == 'i') or (i == 'I')):
                    ByteSize = 4
                elif ((i == 'h') or (i == 'H')):
                    ByteSize = 2
                Reader += ByteSize
                self.CommandArgs[CommandNumber].append(struct.unpack(i, self.File.read(ByteSize))[0])
            self.Commands.append(Code)
            #КОНТРОЛЬ!!! ТЕХНИЧЕСКОЕ!!!
            DontDef = 0
            #if ((DontKnow == 1) and (Code != 0x00)):
            if (DontKnow == 1):
            #if (DontKnow == 0):
            #if (Code == 0x51):
            #if (0 == 1):
                for i in range(0, len(self.CommandsLibrary)):
                    DontDef = 1
                    if ((self.Commands[CommandNumber] == self.CommandsLibrary[i][0]) and (self.CommandsLibrary[i][2] != '')):
                        DontDef = 0
                        break
                '''
                if (DontDef == 0):
                    print(self.CommandsLibrary[i][2])
                else:
                    print(self.Commands[CommandNumber])
                print(self.CommandArgs[CommandNumber])
                '''
            #!!!
            CommandNumber += 1
        self.File.seek(self.FileParametrs[1], 0)
        self.FileStruct[1] = self.File.read(self.FileParametrs[2])
    def ReadStringDec(self):
        Offset = 0
        for i in range(1, 3):
            Offset += self.FileParametrs[i]
        self.File.seek(Offset, 0)

        self.FileStringOffsets = []
        for i in range(0, self.FileParametrs[3]//4):
            self.FileStringOffsets.append(struct.unpack('i', self.File.read(4))[0])
        
        self.File.seek(Offset, 0)
        self.FileStruct[2] = self.File.read(self.FileParametrs[3])
    def ReadStringDef(self):
        Offset = 0
        for i in range(1, 4):
            Offset += self.FileParametrs[i]
        self.File.seek(Offset, 0)

        self.FileStrings = []
        for i in range(0, len(self.FileStringOffsets)):
            Dohod = 0
            if (i == (len(self.FileStringOffsets) - 1)):
                Dohod = self.FileParametrs[4]
            else:
                Dohod = self.FileStringOffsets[i+1]
            Dohod -=  self.FileStringOffsets[i]
            self.FileStrings.append(self.File.read(Dohod-1).decode("shift_jis"))
            self.File.read(1)
        
        self.File.seek(Offset, 0)
        self.FileStruct[3] = self.File.read(self.FileParametrs[4])
    def ReadRemaining(self):
        Offset = 0
        for i in range(1, 5):
            Offset += self.FileParametrs[i]
        self.File.seek(Offset, 0)
        self.FileStruct[4] = b''
        for i in range(5, len(self.FileParametrs)):
            self.FileStruct[4] += self.File.read(self.FileParametrs[i])
    def ReadAll(self):
        self.ReadHeader()
        self.ReadCommand()
        self.ReadStringDec()
        self.ReadStringDef()
        self.ReadRemaining()
    #Запись и связь с .txt:
    def RewriteGscFile(self):
        for i in self.FileStruct:
            self.File.write(i)
    def RemakeGscFromGsc(self):
        self.ReadAll() #Прочтение всех секций.
        self.RedoAll()
        self.CloseFile() #Закрытие файла.
        self.WriteFileBin() #Запись бинарных строк в .gsc.
        self.RewriteGscFile() #Перезапись бинарного файла.
        self.CloseFile() #Закрытие файла.
    def DecompileGscToTxt(self):
        self.ReadAll()
        self.CloseFile()
        self.WriteFile()

        StringCount = 0
        Offset = 0
        
        #Заранее находим указанные смещения.
        LabelNumber = 0
        for CommandNumber in range(0, len(self.Commands)):
            FindOffset = 0
            Marbas = 0
            doKnowOffset = -1
            while (Marbas < len(self.ConnectedOffsetsLibrary)):
                if (self.Commands[CommandNumber] == self.ConnectedOffsetsLibrary[Marbas][0]):
                    FindOffset = 1
                    break
                Marbas += 1
            if (FindOffset == 0):
                continue
            for Mardab in self.ConnectedOffsetsLibrary[Marbas][1]:
                #Сперва посмотрим, относится ли к какой метке.
                for Marmal in self.Labels:
                    if (self.CommandArgs[CommandNumber][Mardab] == Marmal[1]):
                        doKnowOffset = Marmal[0]
                        break
                #Теперь рассудим.
                if (doKnowOffset == -1):
                    self.Labels.append([])
                    self.Labels[LabelNumber].append(LabelNumber)
                    self.Labels[LabelNumber].append(self.CommandArgs[CommandNumber][Mardab])
                    self.CommandArgs[CommandNumber][Mardab] = LabelNumber
                    LabelNumber += 1
                else:
                    self.CommandArgs[CommandNumber][Mardab] = doKnowOffset
        #Вывод метод для отладки.
        #print(self.Labels)
        
        #Основная часть.
        for CommandNumber in range(0, len(self.Commands)):
            #Во-первых, следует определить при необходимости метку.
            for Marmal in self.Labels:
                if (Offset == Marmal[1]):
                    self.File.write('@' + str(Marmal[0]) + '\n')
            #Здесь надо кое-что сперва определить...
            DontDef = 0
            DontKnow = 0
            MessageKostil = 0
            CommandName = ''
            for i in range(0, len(self.CommandsLibrary)):
                DontDef = 1
                DontKnow = 1
                #if ((self.Commands[CommandNumber] == self.CommandsLibrary[i][0]) and (self.CommandsLibrary[i][2] != '')):
                #    DontDef = 0
                #    break;
                if (self.Commands[CommandNumber] == self.CommandsLibrary[i][0]):
                    if (self.CommandsLibrary[i][2] != ''):
                        DontDef = 0
                    DontKnow = 0
                    break;
            if (DontDef == 0):
                CommandName = self.CommandsLibrary[i][2]
            else:
                CommandName = str(self.Commands[CommandNumber])
            #Во-вторых, получить смещение после сей итерации.
            Offset += 2 #Все команды двухбайтовы.
            if (DontKnow == 0):
                for OfferI in self.CommandsLibrary[i][1]:
                    if ((OfferI == 'h') or (OfferI == 'H')):
                        Offset += 2
                    elif ((OfferI == 'i') or (OfferI == 'I')):
                        Offset += 4
            else:
                if ((self.Commands[CommandNumber] & 0xf000) == 0xf000):
                    Offset += 4
                elif ((self.Commands[CommandNumber] & 0xf000) == 0x0000):
                    Offset += 0
                else:
                    Offset += 6
            #Ну и далее всё остальное.
            
            ConStr = 0
            kk = 0
            for kk in range(0, len(self.ConnectedStringsLibrary)):
                if (self.Commands[CommandNumber] == self.ConnectedStringsLibrary[kk][0]):
                    ConStr = 1
                    break
            if (ConStr > 0):
                kkk = 0
                StringsNew = []
                for kkk in range(len(self.ConnectedStringsLibrary[kk][1])):
                    MessageArgsTrue = self.CommandArgs[CommandNumber]
                    MessageNum = MessageArgsTrue[self.ConnectedStringsLibrary[kk][1][kkk]]
                    MessageArgsTrue[self.ConnectedStringsLibrary[kk][1][kkk]] = -1
                    StringsNew.append(self.FileStrings[MessageNum].replace('^n', '\n'))
                    while (StringCount < MessageNum):
                        self.File.write('>' + str(StringCount) + '\n')
                        self.File.write(self.FileStrings[StringCount].replace('^n', '\n') + '\n')
                        StringCount += 1
                    StringCount += 1
                    
                self.File.write("#" + CommandName + '\n')
                self.File.write(str(self.CommandArgs[CommandNumber]))
                for z in StringsNew:
                    self.File.write("\n>-1\n" + z)                
            else:
                self.File.write("#" + CommandName + '\n')
                self.File.write(str(self.CommandArgs[CommandNumber]))
            if (CommandNumber != (len(self.Commands) - 1)):
                self.File.write("\n")
            else:
                while (StringCount < len(self.FileStrings)):
                    self.File.write('\n>' + str(StringCount) + '\n')
                    self.File.write(self.FileStrings[StringCount].replace('^', '\\'))
                    StringCount += 1
        self.CloseFile()
    def CompileTxtToGsc(self):
        Lines = self.File.read().split('\n')
        i = 0

        #Обозначим все метки.
        Offset = 0
        LenOff = 0
        while (i < len(Lines)):
            if (Lines[i] == ''):
                i += 1
                continue
            if (Lines[i][0] == '@'):
                NotAnythingNew = 0
                LabelNumber = int(Lines[i][1:])
                for Marbas in self.Labels:
                    if (LabelNumber == Marbas[0]):
                        NotAnythingNew = 1
                        break
                if (NotAnythingNew == 1):
                    i += i
                    continue
                self.Labels.append([])
                self.Labels[LenOff].append(LabelNumber)
                self.Labels[LenOff].append(Offset)
                LenOff += 1
                i += 1
            elif (Lines[i][0] == '#'):
                CommandDef = Lines[i][1:]
                DontKnow = 1
                iz = 0
                while (iz < len(self.CommandsLibrary)):
                    if (CommandDef == str(self.CommandsLibrary[iz][0])):
                        DontKnow = 0
                        break
                    elif (CommandDef == self.CommandsLibrary[iz][2]):
                        DontKnow = 0
                        CommandDef = str(self.CommandsLibrary[iz][0])
                        break
                    iz += 1
                CommandDef = int(CommandDef)
                Offset += 2
                if (DontKnow == 0):
                    for OfferI in self.CommandsLibrary[iz][1]:
                        if ((OfferI == 'h') or (OfferI == 'H')):
                            Offset += 2
                        elif ((OfferI == 'i') or (OfferI == 'I')):
                            Offset += 4
                else:
                    if ((CommandDef & 0xf000) == 0xf000):
                        Offset += 4
                    elif ((CommandDef & 0xf000) == 0x0000):
                        Offset += 0
                    else:
                        Offset += 6
                i += 1
            else:
                i += 1
                continue

        #Сделаем всё остальное.
        i = 0
        while (i < len(Lines)):
            if (Lines[i] == ''):
                i += 1
                continue
            if (Lines[i][0] == '$'): #Комментарии.
                i += 1
                continue
            if (Lines[i][0] == '@'): #Метки (забираются раньше).
                i += 1
                continue
            if (Lines[i][0] == '>'):
                String = ''
                i += 1
                KostilPer = 1
                while (i < len(Lines)):
                    if (len(Lines[i]) == 0):
                        if (KostilPer == 1):
                            KostilPer = 0
                        else:
                            String = String + '^n'
                        i += 1
                        continue
                    if (Lines[i][0] == '$'): #Комментарии.
                        i += 1
                        continue
                    if ((Lines[i][0] == '#') or (Lines[i][0] == '>') or (Lines[i][0] == '@')):
                        break
                    if (KostilPer == 1):
                        KostilPer = 0
                    else:
                        String = String + '^n'
                    String = String + Lines[i]
                    i += 1
                self.FileStrings.append(String)
            elif (Lines[i][0] == '#'):
                CommandType = 0
                CommandCTR = []
                CommandNEW = []
                for Cmed in self.CommandsLibrary:
                    if (Lines[i][1:] == Cmed[2]):
                        Lines[i] = Lines[i].replace(Cmed[2], str(Cmed[0]))
                        break
                CommandType = int(Lines[i][1:])
                self.Commands.append(CommandType)
                i += 1
                Lines[i] = Lines[i].replace('[', '').replace(', ', ' ').replace(']', '')
                CommandCTR = Lines[i].split(' ')
                if (CommandCTR == ['']):
                    CommandCTR = []
                for ii in range(0, len(CommandCTR)):
                    CommandNEW.append(int(CommandCTR[ii]))
                #Работаем с командами, где есть связанные со смещениями аргументы.
                Farba = 0
                while (Farba < len(self.ConnectedOffsetsLibrary)):
                    if (CommandType == self.ConnectedOffsetsLibrary[Farba][0]):
                        for NewZeland in self.ConnectedOffsetsLibrary[Farba][1]:
                            Ermeg = 0
                            Ermeg = CommandNEW[NewZeland]
                            Ai = 0
                            for Ai in self.Labels:
                                if (Ermeg == Ai[0]):
                                    CommandNEW[NewZeland] = Ai[1]
                        break   
                    Farba += 1
                
                #Далее всё как обычно.
                self.CommandArgs.append(CommandNEW)
                i += 1

                ConStr = 0
                kk = 0
                for kk in range(0, len(self.ConnectedStringsLibrary)):
                    if (CommandType == self.ConnectedStringsLibrary[kk][0]):
                        ConStr = 1
                        break
                
                if (ConStr > 0):
                    kkk = 0
                    for kkk in range(len(self.ConnectedStringsLibrary[kk][1])):
                        String = ''
                        i += 1
                        KostilPer = 1
                        while (i < len(Lines)):
                            if (len(Lines[i]) == 0):
                                if (KostilPer == 1):
                                    KostilPer = 0
                                else:
                                    String = String + '^n'
                                i += 1
                                continue
                            if (Lines[i][0] == '$'): #Комментарии.
                                i += 1
                                continue
                            if ((Lines[i][0] == '#') or (Lines[i][0] == '>') or (Lines[i][0] == '@')):
                                break
                            if (KostilPer == 1):
                                KostilPer = 0
                            else:
                                String = String + '^n'
                            if (i >= len(Lines)):
                                i -= 1
                            String = String + Lines[i]
                            i += 1
                        self.FileStrings.append(String)
                        self.CommandArgs[-1][self.ConnectedStringsLibrary[kk][1][kkk]] = (len(self.FileStrings) - 1)
            else:
                i += 1
                continue
        self.CloseFile()
        
        self.WriteFileBin()
        self.RedoAll()
        self.RewriteGscFile()
        self.CloseFile()
    #Переопределение:
    def RefreshHeaderPrm(self):
        Sizer = 36
        self.FileParametrs = [0, 36]
        for i in range(2, 5):
            Sizer += len(self.FileStruct[i-1])
            self.FileParametrs.append(len(self.FileStruct[i-1]))
        self.FileParametrs.append(4)
        self.FileParametrs.append(1)
        self.FileParametrs.append(4)
        self.FileParametrs.append(1)
        Sizer += len(self.FileStruct[4])
        self.FileParametrs[0] = Sizer
    def RemakeHeaderFromPrm(self):
        self.FileStruct[0] = b''
        for i in self.FileParametrs:
            self.FileStruct[0] += struct.pack("i", i)
    def RedoHeader(self):
        self.RefreshHeaderPrm()
        self.RemakeHeaderFromPrm()
    def RemakeOffsetsFromStrings(self):
        self.FileStringOffsets = []
        Dohod = 0
        for i in range(0, len(self.FileStrings)):
            self.FileStringOffsets.append(Dohod)
            Dohod += 1 + len(self.FileStrings[i].encode("shift_jis"))
    def RewriteStringDec(self):
        self.FileStruct[2] = b''
        for i in self.FileStringOffsets:
            self.FileStruct[2] += struct.pack("i", i)
    def RewriteStringDef(self):
        self.FileStruct[3] = b''
        for i in self.FileStrings:
            self.FileStruct[3] += i.encode("shift_jis") + b'\x00'
    def RedoStrings(self):
        self.RemakeOffsetsFromStrings()
        self.RewriteStringDec()
        self.RewriteStringDef()
    def RedoCommands(self):
        self.FileStruct[1] = b''
        for NumCom in range(0, len(self.Commands)):
            Code = self.Commands[NumCom]
            DontKnow = 1
            CommandArgsStruct = ''
            for i in range(0, len(self.CommandsLibrary)):
                if (Code == self.CommandsLibrary[i][0]):
                    DontKnow = 0
                    CommandArgsStruct = self.CommandsLibrary[i][1]
                    break;
            if (DontKnow == 1): #Попробуем догадаться об аргументах из маски.
                if ((Code & 0xf000) == 0xf000):
                    CommandArgsStruct = 'hh'
                elif ((Code & 0xf000) == 0x0000):
                    CommandArgsStruct = ''
                else:
                    CommandArgsStruct = 'hhh'
            self.FileStruct[1] += struct.pack('H', Code)
            for NumArg in range(0, len(CommandArgsStruct)):
                CommandStruct = CommandArgsStruct[NumArg]
                self.FileStruct[1] += struct.pack(CommandStruct, self.CommandArgs[NumCom][NumArg])
    def RedoRemaining(self):
        self.FileStruct[4] = b'\x00\x00\x00\x00\x00\x00\x00\x00\x00\x00'
    def RedoAll(self):
        self.RedoStrings()
        self.RedoCommands()
        self.RedoRemaining()
        self.RedoHeader()
    def ReinitAll(self):
        self.FileName = ''
        self.FileParametrs = []
        self.FileParametrsSupport = ('Размер файла',
                                    'Размер заголовка',
                                    'Размер секции команд',
                                    'Размер секции объявления строк',
                                    'Размер секции определения строк',
                                    '???',
                                    '???',
                                    '???',
                                    '???')
        self.FileStruct = [b'', b'', b'', b'', b'']
        self.FileStructSupport = ('Заголовок',
                                 'Секция команд',
                                 'Секция объявления строк',
                                 'Секция определения строк',
                                 'Остальное')
        self.FileStringOffsets = []
        self.FileStrings = []
        self.CommandArgs = []
        self.Commands = []
        self.Labels = []
    #Тех-работа с файлами:
    def CloseFile(self):
        self.File.close()
    def ReadFileBin(self):
        self.File = open(self.FileName + ".gsc", mode="rb")
    def ReadFile(self):
        self.File = open(self.FileName + ".txt", mode="r", encoding="shift_jis")
    def WriteFileBin(self):
        self.File = open(self.FileName + ".gsc", mode="wb")   
    def WriteFile(self):
        self.File = open(self.FileName + ".txt", mode="w", encoding="shift_jis")
