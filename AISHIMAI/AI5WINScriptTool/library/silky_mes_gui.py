import os
import ctypes
import locale
import threading
import tkinter as tk
from tkinter.filedialog import askopenfilename, askdirectory
from tkinter.messagebox import showinfo, showwarning, showerror
from .silky_mes import SilkyMesScript


class SilkyMesGUI:
    default_width = 400
    default_height = 500
    default_max_thread_activity = 10

    possible_languages = ("eng", "rus")

    _strings_lib = {
        "eng": (
            "mesScriptAsseAndDisassembler by Tester",  # 0
            "Single file",
            "Directory",
            "Enter a name of the .mes file:",
            "Enter a name of the directory with .mes files:",
            "Enter a title of the .txt file:",  # 5
            "Enter a name of the directory with .txt files:",
            "All files",
            "Silky Engine mes scripts",
            "Choice of mes script",
            "Choice of directory with mes scripts",  # 10
            "Text files",
            "Choice of directory with txt files",
            "Choice of text file",
            "Commands:",
            "Status:",  # 15
            "Help:",
            "Common help",
            "Usage help",
            "Breaks help",
            "Disassemble",  # 20
            "Assemble",
            "Warning",
            "File mes or a directory of them is not chosen.",
            "File txt or a directory of them is not chosen.",
            "Managing files...",  # 25
            "Error",
            "Disassembling failed. ",
            "Disassembling succeed. ",
            "Assembling failed. ",
            "Assembling succeed. ",  # 30
        ),
        "rus": (
            "mesScriptAsseAndDisassembler от Tester-а",  # 0
            "По файлами",
            "По папкам",
            "Введите название файла .mes:",
            "Введите название директории с файлами .mes:",
            "Введите название файла .txt:",  # 5
            "Введите название директории с файлами .txt:",
            "Все файлы",
            "Скрипты mes Silky Engine",
            "Выбор скрипта mes",
            "Выбор директории со скриптами mes",  # 10
            "Текстовые файлы",
            "Выбор директории с файлами txt",
            "Выбор текстового файла",
            "Команды:",
            "Статус:",  # 15
            "Справка:",
            "Общая справка",
            "Справка о использовании",
            "Справка о переносах",
            "Дизассемблировать",  # 20
            "Ассемблировать",
            "Предупреждение",
            "Файл mes или их директория не выбраны",
            "Файл txt или их директория не выбраны",
            "Обрабатываем файлы...",  # 25
            "Ошибка",
            "Дизассемблирование не удалось. ",
            "Дизассемблирование удалось. ",
            "Ассемблирование не удалось. ",
            "Ассемблирование удалось. ",  # 30
        )
    }

    common_help = {
        'eng': """
Dual languaged (rus+eng) tool for disassembling and assembling scripts .mes from the visual novel's engine Silky Engine (also known as Silky's Engine or SilkyEngine). With it thou can fully edit code, not just strings, as with some earlier tools. Thou can add line or even message breaks without restrictions! Sometimes mes scripts may not contain strings. If this is the case, they can be found in MAP string patch files in data.arc. For them use MAPTool. Sometimes you may need to work with Silky Engine .arc scripts. For it use SilkyArcTool instead.
It has some useful features. Firstly, during disassembling all opcodes '\x0A' changes to '\x0B', so the engine wouldn't try to decrypt new strings and break latin and half-width kana symbols. Secondly, thou can make comments in txt file with "$" at the beginning of the string. Thirdly, some definations: "#0-" are "free bytes", "#1-" are commands (and "[...]" are arguments below), "#2-" are labels and "#3" are speacial header labels.
""",
        'rus': """
Двуязычное (рус+англ) средство для разборки и сборки скриптов .mes движка визуальных новелл Silky Engine, также известного как Silky's Engine и SilkyEngine. С ним вы можете полностью редактирвоать код, а не только строки, как с ранее существовшими средствами. Вы можете добавлять разрывы текста по строкам и даже сообщениям без ограничений! Ежель не найти в скриптах mes строк, то оные в файлах патча строк MAP могут быть, что в data.arc лежат. Для оных используйте MAPTool. Вам также может понадобиться необходимость работать с архивами .arc Silky Engine. Для этого используйте SilkyArcTool.
В нём есть несколько полезных особенностей. Во-первых, во время дизассемблирования все опкоды '\x0A' меняются на '\x0B', дабы движок не пытался дешифровать новые строки и не ломал при том латиницу и полуширинные символы. Во-вторых, можно делать комментарии, при этом в начало строки необходимо ставить "$". В-третьих, опишем некоторые определения: "#0-" есть "вольные байты", "#1-" есть команды (и под ними "[...]" аргументы), "#2-" есть метки и "#3" есть специальные заголовочные метки.""",
    }

    usage_help = {
        'eng': """
1. Choose the mode, file or directory. In first mode you will work with one .mes - .txt pair, in second -- with all files in a pair of directories.
2. Enter a name of the .mes file in the top entry (do see, with extension) or the directory name. Thou can also enter relative or absolute path. You can also click on "..." to choose.
3. Enter a name of the .txt file (do see, with extension) or the directory name. Thou can also enter relative or absolute path. You can also click on "..." to choose.
4. For dissassemble push the button "Disassemble script".
5. For assemble push the button "Assemble script".
6. Status will be displayed on the text area below.
""",
        'rus': """
1. Выберите режим: файл или директорию. В первом вы будете работать с парой .mes - .txt, во втором -- со всеми файлами в паре директорий.
2. Введите название файла .mes в верхней форме (заметьте, с расширением) или имя директории. Также можно вводить относительный или абсолютный до него путь. Также вы можете нажать на кнопку "...", чтобы выбрать.
3. Введите название файла .txt в нижней форме (заметьте, с расширением) или имя директории. Также можно вводить относительный или абсолютный до него путь. Также вы можете нажать на кнопку "...", чтобы выбрать.
4. Для разборки нажмите на кнопку "Дизассемблировать скрипт".
5. Для сборки нажмите на кнопку "Ассемблировать скрипт".
6. Статус сих операций будет отображаться на текстовом поле ниже.
""",
    }

    breaks_help = {
        'eng': """
Sometimes there could be a very big problem: text may not fully get in textbox. But with this tool thou don't need to cut some part of text, no. Thou can use line and message breaks. Methods are below.
>>> For line breaks insert this below the current message ('SomeString' -> text on the new line).
```
#1-TO_NEW_STRING
[0]
#1-STR_UNCRYPT
['SomeString']
```
>>> For message breaks insert this below the current message ('SomeString' -> text on the new message).
```
#1-32
[0, 3]
#1-32
[0, 22]
#1-24
[]
#1-32
[0, 0]
#1-32
[0, 3]
#1-17
[]
#1-MESSAGE
[0]
#1-STR_UNCRYPT
['SomeString']
```
""",
        'rus': """
Иногда можно столкнуться с одной большой-пребольшой проблемой: текст может не полностью влезать в текстовое окно. Однако, с сим средством вам не нужно обрезать его, отнюдь. Вы можеет организовывать переносы по строкам и сообщениям. Методы указаны ниже.
>>> Для переносов по строкам добавьте под текущее сообщение следующий код ('Какая_то_строка' -> текст на новой строке).
```
#1-TO_NEW_STRING
[0]
#1-STR_UNCRYPT
['Какая_то_строка']
```
>>> Для переносов по сообщениям добавьте под текущее сообщение следующий код ('Какая_то_строка' -> текст на новой строке).
```
#1-32
[0, 3]
#1-32
[0, 22]
#1-24
[]
#1-32
[0, 0]
#1-32
[0, 3]
#1-17
[]
#1-MESSAGE
[0]
#1-STR_UNCRYPT
['Какая_то_строка']
```
""",
    }

    def __init__(self, **kwargs):
        """Arguments: width, height, language ("eng", "rus"), max_thread_activity..."""
        self._width = kwargs.get("width", self.default_width)
        self._height = kwargs.get("height", self.default_height)
        self._language = kwargs.get("language", self.init_language())
        self._max_thread_activity = kwargs.get("max_thread_activity", self.default_max_thread_activity)
        self._thread_semaphore = threading.BoundedSemaphore(self._max_thread_activity)
        self._unlocker_count = 0
        self._count_lock = threading.Lock()
        self._print_lock = threading.Lock()
        self._status_lock = threading.Lock()

        self._root = tk.Tk()
        self._root.lang_index = 0
        self._root.geometry('{}x{}+{}+{}'.format(
            self._width,
            self._height,
            self._root.winfo_screenwidth() // 2 - self._width // 2,
            self._root.winfo_screenheight() // 2 - self._height // 2))

        self._mes_file = tk.StringVar()  # Name (with path) of Silky Engine's .mes archive.
        self._txt_file = tk.StringVar()  # Name (with path) of txt file.
        self._input_mode = tk.IntVar()  # How to input. 0 -- file, 1 -- directory.
        self._last_indexer = 0  # Some logic only for actual change.

        self._mode_rdb = []
        for i in range(2):
            new_radio = tk.Radiobutton(master=self._root,
                                       variable=self._input_mode,
                                       background="white",
                                       font=('Helvetica', 14),
                                       value=i)
            new_radio.lang_index = i + 1
            self._mode_rdb.append(new_radio)

        self._rus_btn = tk.Button(master=self._root,
                                  text="Русский",
                                  command=lambda: self.translate("rus"),
                                  font=('Helvetica', 15),
                                  bg='white')
        self._eng_btn = tk.Button(master=self._root,
                                  text="English",
                                  command=lambda: self.translate("eng"),
                                  font=('Helvetica', 15),
                                  bg='white')

        self._mes_point_lbl = tk.Label(master=self._root,
                                       bg='white',
                                       font=('Helvetica', 12))
        self._mes_name_ent = tk.Entry(master=self._root,
                                      bg='white',
                                      textvariable=self._mes_file)
        self._mes_find_btn = tk.Button(master=self._root,
                                       text="...",
                                       command=self._find_mes,
                                       font=('Helvetica', 12),
                                       bg='white')

        self._txt_point_lbl = tk.Label(master=self._root,
                                       bg='white',
                                       font=('Helvetica', 12))
        self._txt_name_ent = tk.Entry(master=self._root,
                                      bg='white',
                                      textvariable=self._txt_file)
        self._txt_find_btn = tk.Button(master=self._root,
                                       text="...",
                                       command=self._find_txt,
                                       font=('Helvetica', 12),
                                       bg='white')

        self._input_mode.trace_add("write", lambda *garbage: self._change_input_mode())
        self._input_mode.set(self._last_indexer)

        self._commands_lfr = tk.LabelFrame(master=self._root,
                                           font=('Helvetica', 14),
                                           bg='white',
                                           relief=tk.RAISED)
        self._commands_lfr.lang_index = 14
        self._status_lfr = tk.LabelFrame(master=self._root,
                                         font=('Helvetica', 14),
                                         bg='white',
                                         relief=tk.RAISED)
        self._status_lfr.lang_index = 15
        self._help_lfr = tk.LabelFrame(master=self._root,
                                       font=('Helvetica', 14),
                                       bg='white',
                                       relief=tk.RAISED)
        self._help_lfr.lang_index = 16

        self._status_txt = tk.Text(master=self._status_lfr,
                                   wrap=tk.WORD,
                                   font=('Helvetica', 14),
                                   bg='white',
                                   relief=tk.SUNKEN,
                                   state=tk.DISABLED)

        self._common_help_btn = tk.Button(master=self._help_lfr,
                                          text="Common help",
                                          command=lambda: showinfo(title=self._strings_lib[self._language][17],
                                                                   message=self.common_help[self._language]),
                                          font=('Helvetica', 12),
                                          bg='white')
        self._common_help_btn.lang_index = 17
        self._usage_help_btn = tk.Button(master=self._help_lfr,
                                         text="Usage help",
                                         command=lambda: showinfo(title=self._strings_lib[self._language][18],
                                                                  message=self.usage_help[self._language]),
                                         font=('Helvetica', 12),
                                         bg='white')
        self._usage_help_btn.lang_index = 18
        self._breaks_help_btn = tk.Button(master=self._help_lfr,
                                          text="Line/message breaks help",
                                          command=lambda: showinfo(title=self._strings_lib[self._language][19],
                                                                   message=self.breaks_help[self._language]),
                                          font=('Helvetica', 12),
                                          bg='white')
        self._breaks_help_btn.lang_index = 19

        commands = (self._disassemble, self._assemble)
        self._action_btn = []
        for num, comm in enumerate(commands):
            new_btn = tk.Button(
                master=self._commands_lfr,
                command=comm,
                font=('Helvetica', 12),
                bg='white',
            )
            new_btn.lang_index = 20 + num
            self._action_btn.append(new_btn)

        self._init_strings()

        self.place_widgets()
        self.start_gui()

    # Technical methods to do directory before running GUI.

    def place_widgets(self) -> None:
        """Place widgets of the GUI."""
        # Top buttons.
        self._rus_btn.place(relx=0.0, rely=0.0, relwidth=0.5, relheight=0.05)
        self._eng_btn.place(relx=0.5, rely=0.0, relwidth=0.5, relheight=0.05)

        # Input/output files/dirs choosers widgets.

        for num, widget in enumerate(self._mode_rdb):
            widget.place(relx=0.5 * num, rely=0.05, relwidth=0.5, relheight=0.05)
        self._mes_point_lbl.place(relx=0.0, rely=0.1, relwidth=1.0, relheight=0.05)
        self._mes_name_ent.place(relx=0.0, rely=0.15, relwidth=0.9, relheight=0.05)
        self._mes_find_btn.place(relx=0.9, rely=0.15, relwidth=0.1, relheight=0.05)
        self._txt_point_lbl.place(relx=0.0, rely=0.2, relwidth=1.0, relheight=0.05)
        self._txt_name_ent.place(relx=0.0, rely=0.25, relwidth=0.9, relheight=0.05)
        self._txt_find_btn.place(relx=0.9, rely=0.25, relwidth=0.1, relheight=0.05)

        # Commands.

        for widget in self._action_btn:
            widget.pack(fill=tk.X)

        # Text area.

        self._status_txt.pack()

        # Help buttons.

        self._common_help_btn.pack(fill=tk.X)
        self._usage_help_btn.pack(fill=tk.X)
        self._breaks_help_btn.pack(fill=tk.X)

        # And finally label frames.

        self._commands_lfr.place(relx=0.0, rely=0.3, relwidth=1.0, relheight=0.2)
        self._status_lfr.place(relx=0.0, rely=0.5, relwidth=1.0, relheight=0.2)
        self._help_lfr.place(relx=0.0, rely=0.7, relwidth=1.0, relheight=0.3)

    def start_gui(self) -> None:
        """Start the GUI."""
        # To make more space for patching.
        self._root.mainloop()

    # Choose input/output files/dirs.

    def _change_input_mode(self) -> None:
        """Change of mode of the input: text or directory."""
        indexer = self._input_mode.get()
        self._mes_point_lbl.lang_index = 3 + indexer
        self._txt_point_lbl.lang_index = 5 + indexer
        if indexer == 0 and indexer != self._last_indexer:  # Filenames now.
            self._mes_file.set("")
            self._txt_file.set("")
        else:
            self._mes_file.set(os.path.splitext(self._mes_file.get())[0])
            self._txt_file.set(os.path.splitext(self._txt_file.get())[0])
        self._last_indexer = indexer
        self._init_strings()

    def _find_mes(self) -> None:
        """Find mes file or a directory with them."""
        if self._input_mode.get() == 0:  # File mode.
            file_types = [(self._strings_lib[self._language][8], '*.mes'),
                          (self._strings_lib[self._language][7], '*')]
            file_name = askopenfilename(filetypes=file_types, initialdir=os.getcwd(),
                                        title=self._strings_lib[self._language][9])
            if file_name:
                file_name = os.path.normpath(file_name)
                relpath = os.path.relpath(file_name, os.getcwd())
                end_arc = file_name
                if relpath.count(os.sep) < file_name.count(os.sep):
                    end_arc = relpath
                self._mes_file.set(end_arc)
                if self._txt_file.get() == "":
                    self._txt_file.set(os.path.splitext(end_arc)[0] + ".txt")
        else:  # Dir mode.
            dir_name = askdirectory(initialdir=os.getcwd(), title=self._strings_lib[self._language][10])
            if dir_name:
                dir_name = os.path.normpath(dir_name)
                relpath = os.path.relpath(dir_name, os.getcwd())
                end_dir = dir_name
                if relpath.count(os.sep) < dir_name.count(os.sep):
                    end_dir = relpath
                self._mes_file.set(end_dir)

    def _find_txt(self) -> None:
        """Find txt file or a directory with them."""
        if self._input_mode.get() == 0:  # File mode.
            file_types = [(self._strings_lib[self._language][1], '*.txt'),
                          (self._strings_lib[self._language][7], '*')]
            file_name = askopenfilename(filetypes=file_types, initialdir=os.getcwd(),
                                        title=self._strings_lib[self._language][13])
            if file_name:
                file_name = os.path.normpath(file_name)
                relpath = os.path.relpath(file_name, os.getcwd())
                end_arc = file_name
                if relpath.count(os.sep) < file_name.count(os.sep):
                    end_arc = relpath
                self._txt_file.set(end_arc)
                if self._mes_file.get() == "":
                    self._mes_file.set(os.path.splitext(end_arc)[0] + ".mes")
        else:  # Dir mode.
            dir_name = askdirectory(initialdir=os.getcwd(), title=self._strings_lib[self._language][12])
            if dir_name:
                dir_name = os.path.normpath(dir_name)
                relpath = os.path.relpath(dir_name, os.getcwd())
                end_dir = dir_name
                if relpath.count(os.sep) < dir_name.count(os.sep):
                    end_dir = relpath
                self._txt_file.set(end_dir)

    # Activity (un)locking.

    def _lock_activity(self) -> None:
        """Lock disassemble and assemble actions while managing other files."""
        self._status_txt["state"] = tk.NORMAL
        self._status_txt.delete(1.0, tk.END)
        self._status_txt.insert(1.0, self._strings_lib[self._language][25])
        self._status_txt["state"] = tk.DISABLED
        for widget in self._action_btn:
            widget["state"] = tk.DISABLED

    def _unlock_activity(self) -> None:
        """Unlock disassemble and assemble actions after managing other files."""
        for widget in self._action_btn:
            widget["state"] = tk.NORMAL

    #  Disassembling and assembling methods.

    def _disassemble(self) -> bool:
        """Disassemble a mes script or a group of them to a text file or a group of them"""
        mes_file, txt_file, status = self._get_mes_and_txt()
        if not status:
            return False

        self._lock_activity()
        if self._input_mode.get() == 0:  # File mode.
            self._unlocker_count = 1
            new_thread = threading.Thread(daemon=False, target=self._disassemble_this_mes,
                                          args=(mes_file, txt_file))
            new_thread.start()
        else:  # Dir mode.
            files_to_manage = []
            os.makedirs(txt_file, exist_ok=True)
            ezz = len(mes_file.split(os.sep))
            for root, dirs, files in os.walk(mes_file):
                for file_name in files:
                    new_file_array = []  # mes_file, txt_file

                    basic_path = os.sep.join(os.path.join(root, file_name).split(os.sep)[ezz:])
                    rel_mes_name = os.path.normpath(os.path.join(mes_file, basic_path))
                    rel_txt_name = os.path.normpath(os.path.join(txt_file, os.path.splitext(basic_path)[0] + ".txt"))

                    new_file_array.append(rel_mes_name)
                    new_file_array.append(rel_txt_name)
                    files_to_manage.append(new_file_array)

                    # Why did I not initiate file management right away, thou ask?

            self._unlocker_count = len(files_to_manage)  # ...That is the answer.
            for file_mes, file_txt in files_to_manage:
                new_thread = threading.Thread(daemon=False, target=self._disassemble_this_mes,
                                              args=(file_mes, file_txt))
                new_thread.start()

        return True

    def _disassemble_this_mes(self, mes_file: str, txt_file: str) -> None:
        """Disassemble this mes script."""
        try:
            self._thread_semaphore.acquire()
            script_mes = SilkyMesScript(mes_file, txt_file)
            script_mes.disassemble()
            self._status_lock.acquire()
            self._status_txt["state"] = tk.NORMAL
            self._status_txt.delete(1.0, tk.END)
            self._status_txt.insert(1.0, mes_file + ": ")
            self._status_txt.insert(2.0, self._strings_lib[self._language][28])
            self._status_txt["state"] = tk.DISABLED
            self._status_lock.release()
            self._print_lock.acquire()
            print("Disassembling of {0} succeed./Дизассемблирование {0} прошло успешно.".format(mes_file))
            self._print_lock.release()
        except Exception as ex:
            self._print_lock.acquire()
            print("Disassembling of {0} error./Дизассемблирование {0} не удалось.".format(mes_file))
            self._print_lock.release()
            showerror(title=self._strings_lib[self._language][26], message=str(ex))
            self._status_lock.acquire()
            self._status_txt["state"] = tk.NORMAL
            self._status_txt.delete(1.0, tk.END)
            self._status_txt.insert(1.0, mes_file + ": ")
            self._status_txt.insert(2.0, self._strings_lib[self._language][27])
            self._status_txt["state"] = tk.DISABLED
            self._status_lock.release()
        finally:
            self._count_lock.acquire()
            self._unlocker_count -= 1
            self._count_lock.release()
            if self._unlocker_count == 0:
                self._unlock_activity()
            self._thread_semaphore.release()

    def _assemble(self) -> bool:
        """Assemble a mes script or a group of them from the text file or a group of them"""
        mes_file, txt_file, status = self._get_mes_and_txt()
        if not status:
            return False

        self._lock_activity()
        if self._input_mode.get() == 0:  # File mode.
            self._unlocker_count = 1
            new_thread = threading.Thread(daemon=False, target=self._assemble_this_mes,
                                          args=(mes_file, txt_file))
            new_thread.start()
        else:  # Dir mode.
            files_to_manage = []
            os.makedirs(mes_file, exist_ok=True)
            ezz = len(txt_file.split(os.sep))
            for root, dirs, files in os.walk(txt_file):
                for file_name in files:
                    new_file_array = []  # mes_file, txt_file

                    basic_path = os.sep.join(os.path.join(root, file_name).split(os.sep)[ezz:])
                    rel_mes_name = os.path.normpath(os.path.join(mes_file, os.path.splitext(basic_path)[0] + ".MES"))
                    rel_txt_name = os.path.normpath(os.path.join(txt_file, basic_path))

                    new_file_array.append(rel_mes_name)
                    new_file_array.append(rel_txt_name)
                    files_to_manage.append(new_file_array)

                    # Why did I not initiate file management right away, thou ask?

            self._unlocker_count = len(files_to_manage)  # ...That is the answer.
            for file_mes, file_txt in files_to_manage:
                new_thread = threading.Thread(daemon=False, target=self._assemble_this_mes,
                                              args=(file_mes, file_txt))
                new_thread.start()

        return True

    def _assemble_this_mes(self, mes_file: str, txt_file: str) -> None:
        """Assemble this mes script."""
        try:
            self._thread_semaphore.acquire()
            script_mes = SilkyMesScript(mes_file, txt_file)
            script_mes.assemble()
            self._status_lock.acquire()
            self._status_txt["state"] = tk.NORMAL
            self._status_txt.delete(1.0, tk.END)
            self._status_txt.insert(1.0, mes_file + ": ")
            self._status_txt.insert(2.0, self._strings_lib[self._language][30])
            self._status_txt["state"] = tk.DISABLED
            self._status_lock.release()
            self._print_lock.acquire()
            print("Assembling of {0} succeed./Ассемблирование {0} прошло успешно.".format(mes_file))
            self._print_lock.release()
        except Exception as ex:
            self._print_lock.acquire()
            print("Assembling of {0} error./Ассемблирование {0} не удалось.".format(mes_file))
            self._print_lock.release()
            showerror(title=self._strings_lib[self._language][26], message=str(ex))
            self._status_lock.acquire()
            self._status_txt["state"] = tk.NORMAL
            self._status_txt.delete(1.0, tk.END)
            self._status_txt.insert(1.0, mes_file + ": ")
            self._status_txt.insert(2.0, self._strings_lib[self._language][29])
            self._status_txt["state"] = tk.DISABLED
            self._status_lock.release()
        finally:
            self._count_lock.acquire()
            self._unlocker_count -= 1
            self._count_lock.release()
            if self._unlocker_count == 0:
                self._unlock_activity()
            self._thread_semaphore.release()

    def _get_mes_and_txt(self) -> tuple:
        """Get mes, txt files or directories and check status."""
        status = True

        # Check if there a mes file/dir.

        mes_file = self._mes_file.get()
        if mes_file == '':
            status = False
            showwarning(title=self._strings_lib[self._language][22],
                        message=self._strings_lib[self._language][23])

        # Check if there a txt file/dir.

        txt_file = self._txt_file.get()
        if txt_file == '':
            status = False
            showwarning(title=self._strings_lib[self._language][22],
                        message=self._strings_lib[self._language][24])

        mes_file = os.path.abspath(mes_file)
        txt_file = os.path.abspath(txt_file)

        return mes_file, txt_file, status

    # Language technical methods.

    def translate(self, language: str) -> None:
        """Change the GUI language on "rus" or "eng"."""
        if language not in self.possible_languages:
            print("Error! Incorrect language!/Ошибка! Некорректный язык!")
            return
        self._language = language
        self._init_strings()

    def _init_strings(self) -> None:
        """Initialize strings of the GUI's widgets."""

        # Quite an elegant solution I through off. Hope this works.
        def _init_all_children_strings(widget):
            for elem in widget.winfo_children():
                if hasattr(elem, "lang_index"):
                    elem["text"] = self._strings_lib[self._language][elem.lang_index]
                if isinstance(elem, tk.Frame) or isinstance(elem, tk.LabelFrame):
                    _init_all_children_strings(elem)

        self._root.title(self._strings_lib[self._language][self._root.lang_index])
        _init_all_children_strings(self._root)

    @staticmethod
    def init_language() -> str:
        """Get default language from the system. Works only on Windows."""
        lang_num = 0
        try:
            windll = ctypes.windll.kernel32
            super_locale = locale.windows_locale[windll.GetUserDefaultUILanguage()][:2]
            to_rus_locales = ('ru', 'uk', 'sr', 'bg', 'kk', 'be', 'hy', 'az')
            if super_locale in to_rus_locales:
                lang_num = 1
        except Exception:  # Yes, yes, I know this is a bad practice, but it does not matter here.
            pass
        return SilkyMesGUI.possible_languages[lang_num]
