import tkinter as tk
import tkinter.ttk as ttk
from tkinter.messagebox import showerror
from library.silky_mes_gui import SilkyMesGUI
from ai5win_mes import AI5WINScript


class AI5WINMesGUI(SilkyMesGUI):
    ver_sep = ":   "

    _strings_lib = {
        "eng": (
            "AI5WINScriptTool by Tester",  # 0
            "Single file",
            "Directory",
            "Enter a name of the .mes file:",
            "Enter a name of the directory with .mes files:",
            "Enter a title of the .txt file:",  # 5
            "Enter a name of the directory with .txt files:",
            "All files",
            "AI65WIN mes scripts",
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
            "Decompile",  # 20
            "Compile",
            "Warning",
            "File mes or a directory of them is not chosen.",
            "File txt or a directory of them is not chosen.",
            "Managing files...",  # 25
            "Error",
            "Decompilation failed. ",
            "Decompilation succeed. ",
            "Compilation failed. ",
            "Compilation succeed. ",  # 30
            "Choose the script version:",
        ),
        "rus": (
            "AI5WINScriptTool от Tester-а",  # 0
            "По файлами",
            "По папкам",
            "Введите название файла .mes:",
            "Введите название директории с файлами .mes:",
            "Введите название файла .txt:",  # 5
            "Введите название директории с файлами .txt:",
            "Все файлы",
            "Скрипты mes AI5WIN",
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
            "Декомпилировать",  # 20
            "Компилировать",
            "Предупреждение",
            "Файл mes или их директория не выбраны",
            "Файл txt или их директория не выбраны",
            "Обрабатываем файлы...",  # 25
            "Ошибка",
            "Декомпиляция не удалась. ",
            "Декомпиляция удалась. ",
            "Компиляция не удалась. ",
            "Компиляция удалась. ",  # 30
            "Выберите версию скриптов:",
        )
    }

    common_help = {
        'eng': """
 Dual languaged (rus+eng) tool for decompiling and compiling scripts .mes from the visual novel's engine AI5WIN. Very incomplete list of games on this engine you can find [on vndb](https://vndb.org/r?q=&o=a&s=title&f=fwAI5WIN-). With it thou can fully edit all the code, not just strings. Thou can add message breaks and change scenarios without restrictions!
 Mes script files can be used not just in AI5WIN, but also in AI6WIN and Silky Engine. For assembling and disassembling mes script files of AI6WIN use [AI6WINScriptTool](https://github.com/TesterTesterov/AI6WINScriptTool), for mes of Silky Engine use [mesScriptAsseAndDisassembler](https://github.com/TesterTesterov/mesScriptAsseAndDisassembler).
 
 Also you may want to pack and unpack archives of AI5WIN. For it use [AI5WINArcTool](https://github.com/TesterTesterov/AI5WINArcTool).

Definations: "#0-" are "free bytes", "#1-" are commands (and "\[...]" are arguments below), "#2-" are labels.

**Supported versions** *(list may not include all existing versions)*:
- 0 - in oldest games (before 2000);
- 1 - in main chunk of games (2000-2003(5));
- 2 - in the oldest games (after 2003(5)).
    """,
        'rus': """
 Двуязычное (рус+англ) средство для декомпиляции и компиляции скриптов .mes движка визуальных новелл AI5WIN. С неполным списком игр на нём вы можете ознакомиться [на vndb](https://vndb.org/r?q=&o=a&s=title&f=fwAI5WIN-). С ним вы можете полностью редактирвоать код, а не только строки; по вашему повелению добавлять разрывы между сообщений и даже менять сценарии по своему замыслу!
 Скрипты с расширением "mes" используются не только в AI6WIN, но также и в AI6WIN с Silky Engine. Чтобы дизассемблировать и ассемблировать скрипты движков AI6WIN и Silky Engine, используйте иные средства -- [AI6WINScriptTool](https://github.com/TesterTesterov/AI6WINScriptTool) и [mesScriptAsseAndDisassembler](https://github.com/TesterTesterov/mesScriptAsseAndDisassembler) соответственно.

 Также вам может понадобиться распаковывать и паковать архивы движка AI5WIN. Для сего используйте средство [AI5WINArcTool](https://github.com/TesterTesterov/AI5WINArcTool).
 
 Определения: "#0-" есть "вольные байты", "#1-" есть команды (и под ними "\[...]" аргументы), "#2-" есть метки.
 
**Поддерживаемые версии** *(список может не включать все существующие версии)*:
- 0 - в старейших играх (до 2000);
- 1 - в основной массе игр (2000-2003(5));
- 2 - в старейших играх (после 2003(5)).
    """
    }
    usage_help = {
        'eng': """
1. Choose the mode, file or directory. In first mode you will work with one .mes - .txt pair, in second -- with all files in a pair of directories.
2. Enter a name of the .mes file in the top entry (do see, with extension) or the directory name. Thou can also enter relative or absolute path. You can also click on "..." to choose.
3. Enter a name of the .txt file (do see, with extension) or the directory name. Thou can also enter relative or absolute path. You can also click on "..." to choose.
4. Choose the script version.
5. To decompile push the button "Decompile".
6. To compile push the button "Compile".
7. Status will be displayed on the text area below.
    """,
        'rus': """
1. Выберите режим: файл или директорию. В первом вы будете работать с парой .mes - .txt, во втором -- со всеми файлами в паре директорий.
2. Введите название файла .mes в верхней форме (заметьте, с расширением) или имя директории. Также можно вводить относительный или абсолютный до него путь. Также вы можете нажать на кнопку "...", чтобы выбрать.
3. Введите название файла .txt в нижней форме (заметьте, с расширением) или имя директории. Также можно вводить относительный или абсолютный до него путь. Также вы можете нажать на кнопку "...", чтобы выбрать.
4. Выберите версию скрипта.
5. Для декомпиляции нажмите на кнопку "Декомпилировать".
6. Для компиляции нажмите на кнопку "Компилировать".
7. Статус сих операций будет отображаться на текстовом поле ниже.
    """,
    }
    breaks_help = {
        'eng': """
>>>Line breaks
For line breaks you need to divide you text and insert command NEW_LINE with argument 0 between them. For example, this...

#1-TEXT
[
    "Sunday. Even though it's a rain season now, today there is a slight window of clear weather. I went on a walk in park with Natsumi."
]

Should become that...

#1-TEXT
[
    "Sunday. Even though it's a rain season now, today there is a slight"
]
#1-NEW_LINE
[
	0
]
#1-TEXT
[
    "window of clear weather. I went on a walk in park with Natsumi."
]

>>> Message breaks
This is quite cumbersome to make a message break in AI5WIN engine. For it you need to subsequently enter the following commands: waiting for click, messagebox text erasing and returning the text output at the beginning of the messagebox. All the code is below.

Alas, code needed for message breaks on AI5WIN is too large for this messagebox to contain.
View it on the github page of the tool: https://github.com/TesterTesterov/AI5WINScriptTool
    """,
        'rus': """
>>> Переносы строк
Для переноса строк вам нужно разделить свой текст на два и между полученными фрагментами вставить команду NEW_LINE с аргументом 0. Например, данный фрагмент...

#1-TEXT
[
    "Воскресенье. Хоть ныне и сезон дождей, сегодня голубое небо изволило ненадолго явиться. Я пошёл погулять в парк с Нацуми."
]

Должен превратиться в следующий...

#1-TEXT
[
    "Воскресенье. Хоть ныне и сезон дождей, сегодня голубое небо изволило"
]
#1-NEW_LINE
[
	0
]
#1-TEXT
[
    "ненадолго явиться. Я пошёл погулять в парк с Нацуми."
]

>>> Переносы по сообщениям
Переносы по сообщениям в AI5WIN делаются достаточно громоздко. Для это надо последовательно ввести команды: ожидания клика пользователя, стирание текста диалогового окна и перенос каретки в начало. Весь код представлен ниже.

Увы, программный код, необходимый для реализации переноса по сообщениям, слишком велик, -- он просто не влезет в сие диалоговое окно.
Вы можете просмотреть его на странице средства в github: https://github.com/TesterTesterov/AI5WINScriptTool
    """
    }

    def __init__(self, **kwargs):
        self._flag_block = True
        super().__init__(**kwargs)
        self._flag_block = False

        self._version_lbl = tk.Label(master=self._root,
                                     bg='white',
                                     font=('Helvetica', 12))
        self._version_lbl.lang_index = 31

        self._version = tk.StringVar()

        possible_versions = [self.ver_sep.join(map(str, i)) for i in AI5WINScript.supported_versions]
        self._version_cmb = ttk.Combobox(
            master=self._root,
            font=('Helvetica', 12),
            textvariable=self._version,
            values=possible_versions,
            state="readonly",
        )
        if possible_versions:
            self._version.set(possible_versions[0])

        self._init_strings()
        self.place_widgets()
        self.start_gui()

    def place_widgets(self) -> None:
        """Place widgets of the GUI."""
        if self._flag_block:
            return
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

        self._version_lbl.place(relx=0.0, rely=0.3, relwidth=1.0, relheight=0.05)
        self._version_cmb.place(relx=0.0, rely=0.35, relwidth=1.0, relheight=0.05)

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

        self._commands_lfr.place(relx=0.0, rely=0.4, relwidth=1.0, relheight=0.2)
        self._status_lfr.place(relx=0.0, rely=0.6, relwidth=1.0, relheight=0.15)
        self._help_lfr.place(relx=0.0, rely=0.75, relwidth=1.0, relheight=0.25)

    def start_gui(self) -> None:
        """Start the GUI."""
        if self._flag_block:
            return
        # To make more space for patching.
        self._root.mainloop()

    def _disassemble_this_mes(self, mes_file: str, txt_file: str) -> None:
        """Decompile this mes script."""
        try:
            self._thread_semaphore.acquire()
            script_mes = AI5WINScript(mes_file, txt_file, version=int(self._version.get().split(self.ver_sep)[0]))
            script_mes.disassemble()
            self._status_lock.acquire()
            self._status_txt["state"] = tk.NORMAL
            self._status_txt.delete(1.0, tk.END)
            self._status_txt.insert(1.0, mes_file + ": ")
            self._status_txt.insert(2.0, self._strings_lib[self._language][28])
            self._status_txt["state"] = tk.DISABLED
            self._status_lock.release()
            self._print_lock.acquire()
            print("Decompilation of {0} succeed./Декомпиляция {0} прошла успешно.".format(mes_file))
            self._print_lock.release()
        except Exception as ex:
            self._print_lock.acquire()
            print("Decompilation of {0} failed./Декомпиляция {0} не удалась.".format(mes_file))
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

    def _assemble_this_mes(self, mes_file: str, txt_file: str) -> None:
        """Compile this mes script."""
        try:
            self._thread_semaphore.acquire()
            script_mes = AI5WINScript(mes_file, txt_file, version=int(self._version.get().split(self.ver_sep)[0]))
            script_mes.assemble()
            self._status_lock.acquire()
            self._status_txt["state"] = tk.NORMAL
            self._status_txt.delete(1.0, tk.END)
            self._status_txt.insert(1.0, mes_file + ": ")
            self._status_txt.insert(2.0, self._strings_lib[self._language][30])
            self._status_txt["state"] = tk.DISABLED
            self._status_lock.release()
            self._print_lock.acquire()
            print("Compilation of {0} succeed./Компиляция {0} прошла успешно.".format(mes_file))
            self._print_lock.release()
        except Exception as ex:
            self._print_lock.acquire()
            print("Compilation of {0} failed./Компиляция {0} не удалась.".format(mes_file))
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
