# AI5WINScriptTool
## English
 Dual languaged (rus+eng) tool for decompiling and compiling scripts .mes from the visual novel's engine AI5WIN. Very incomplete list of games on this engine you can find [on vndb](https://vndb.org/r?q=&o=a&s=title&f=fwAI5WIN-). With it thou can fully edit all the code, not just strings. Thou can add message breaks and change scenarios without restrictions!
 Mes script files can be used not just in AI5WIN, but also in AI6WIN and Silky Engine. For assembling and disassembling mes script files of AI6WIN use [AI6WINScriptTool](https://github.com/TesterTesterov/AI6WINScriptTool), for mes of Silky Engine use [mesScriptAsseAndDisassembler](https://github.com/TesterTesterov/mesScriptAsseAndDisassembler).
 
 Also you may want to pack and unpack archives of AI5WIN. For it use [AI5WINArcTool](https://github.com/TesterTesterov/AI5WINArcTool).

Definations: "#0-" are "free bytes", "#1-" are commands (and "\[...]" are arguments below), "#2-" are labels.
Also 1st version of the engine use special symbols. The tool decompile them as \*N, there N is hex-number.

**Supported versions** *(list may not include all existing versions)*:
- 0 - in old games (1997-2000);
- 1 - in main chunk of games (2000-2003(5));
- 2 - in the newest games (after 2003(5)).

**Unsupported versions**:
- -1 - in one or two oldest releases of AI5WIN. The heretical and deviant version, which would be tiresome to hack with little benefit. **Every game with the version also have at least one other release with one of the supported versions.**

## Русский
 Двуязычное (рус+англ) средство для декомпиляции и компиляции скриптов .mes движка визуальных новелл AI5WIN. С неполным списком игр на нём вы можете ознакомиться [на vndb](https://vndb.org/r?q=&o=a&s=title&f=fwAI5WIN-). С ним вы можете полностью редактирвоать код, а не только строки; по вашему повелению добавлять разрывы между сообщений и даже менять сценарии по своему замыслу!
  Скрипты с расширением "mes" используются не только в AI6WIN, но также и в AI6WIN с Silky Engine. Чтобы дизассемблировать и ассемблировать скрипты движков AI6WIN и Silky Engine, используйте иные средства -- [AI6WINScriptTool](https://github.com/TesterTesterov/AI6WINScriptTool) и [mesScriptAsseAndDisassembler](https://github.com/TesterTesterov/mesScriptAsseAndDisassembler) соответственно.
 
 Также вам может понадобиться распаковывать и паковать архивы движка AI5WIN. Для сего используйте средство [AI5WINArcTool](https://github.com/TesterTesterov/AI5WINArcTool).
  
 Определения: "#0-" есть "вольные байты", "#1-" есть команды (и под ними "\[...]" аргументы), "#2-" есть метки.
 Также в 1-й версии движка в тексте встречаются спецсимволы движка. Они имеют формат \*N, где N -- шестнадцатеричная цифра.
 
**Поддерживаемые версии** *(список может не включать все существующие версии)*:
- 0 - в старых играх (1997-2000);
- 1 - в основной массе игр (2000-2003(5));
- 2 - в новейших играх (после 2003(5)).

**Неподдерживаемые версии**:
- -1 - в одном-двум древнейших релизов AI5WIN. Еретическая и девиантная версия, что было бы проблематично ломать без особого толку. **Каждая игра на сей версии движка также имеет хотя бы один релиз на одной из поддерживаемых версий.**

 # Usage / Использование
## English
![image](https://user-images.githubusercontent.com/66121918/147504688-df9a4c38-1302-4d67-9ba8-57450d611700.png)
1. Choose the mode, file or directory. In first mode you will work with one .mes - .txt pair, in second -- with all files in a pair of directories.
2. Enter a name of the .mes file in the top entry (do see, with extension) or the directory name. Thou can also enter relative or absolute path. You can also click on "..." to choose.
3. Enter a name of the .txt file (do see, with extension) or the directory name. Thou can also enter relative or absolute path. You can also click on "..." to choose.
4. Choose the script version.
5. To decompile push the button "Decompile".
6. To compile push the button "Compile".
7. Status will be displayed on the text area below.

## Русский
![image](https://user-images.githubusercontent.com/66121918/147504673-fe7689ee-131a-45a9-bf08-412775c9bd88.png)
1. Выберите режим: файл или директорию. В первом вы будете работать с парой .mes - .txt, во втором -- со всеми файлами в паре директорий.
2. Введите название файла .mes в верхней форме (заметьте, с расширением) или имя директории. Также можно вводить относительный или абсолютный до него путь. Также вы можете нажать на кнопку "...", чтобы выбрать.
3. Введите название файла .txt в нижней форме (заметьте, с расширением) или имя директории. Также можно вводить относительный или абсолютный до него путь. Также вы можете нажать на кнопку "...", чтобы выбрать.
4. Выберите версию скрипта.
5. Для декомпиляции нажмите на кнопку "Декомпилировать".
6. Для компиляции нажмите на кнопку "Компилировать".
7. Статус сих операций будет отображаться на текстовом поле ниже.

# Tested on / Протестировано на
## English

- [Isaku (1997)](https://vndb.org/r4567). -1 version. **Not supported. Take [Isaku Renewal](https://vndb.org/r4568) instead**.
- [Doukusei 2](https://vndb.org/v2337). 0 version.
- [Koihime](https://vndb.org/v2347). 0 version.
- [Isaku Renewal](https://vndb.org/r4568). 0 version.
- [Shangrlia](https://vndb.org/v3182) ([Elf Classics](https://vndb.org/r5220)). 1 version.
- [Shangrlia 2](https://vndb.org/v3183) ([Elf Classics](https://vndb.org/r5220)). 1 version.
- [Kono Yo no Hate de Koi o Utau Shoujo YU-NO](https://vndb.org/v1377) ([Elf Classics](https://vndb.org/r5220)). 1 version.
- [Shangrlia](https://vndb.org/v3182) ([Shangrlia Multipack](https://vndb.org/r6255)). 2 version.
- [Shangrlia 2](https://vndb.org/v3183) ([Shangrlia Multipack](https://vndb.org/r6255)). 2 version.
- [Kawarazaki-ke no Ichizoku 2](https://vndb.org/v2361) ([DVD-ROM edition](https://vndb.org/r4617)) -- **does not use full-fledged AI5WIN engine!**

## Русский

- [Исаку (1997)](https://vndb.org/r4567). -1 версия. **Не поддерживается. Вместо сего берите [Исаку: Обновлённая версия](https://vndb.org/r4568)**.
- [Одноклассники 2](https://vndb.org/v2337). 0 версия.
- [Принцесса любви](https://vndb.org/v2347). 0 версия.
- [Исаку: Обновлённая версия](https://vndb.org/r4568). 0 версия.
- [Шангри-ла](https://vndb.org/v3182) ([Классика от Elf](https://vndb.org/r5220)). 1 версия.
- [Шангри-ла 2](https://vndb.org/v3183) ([Классика от Elf](https://vndb.org/r5220)). 1 версия.
- [Ю-НО: девушка, что воспевает любовь на краю нашего света](https://vndb.org/v1377) ([Классика от Elf](https://vndb.org/r5220)). 1 версия.
- [Шангри-ла](https://vndb.org/v3182) ([Шангли-ла: Комплексный пакет](https://vndb.org/r6255)). 2 версия.
- [Шангри-ла 2](https://vndb.org/v3183) ([Шангли-ла: Комплексный пакет](https://vndb.org/r6255)). 2 версия.
- [Семья Каварадзаки 2](https://vndb.org/v2361) ([DVD-версия](https://vndb.org/r4617)) -- **не использует полноценный AI5WIN!**

# Some useful functions / Некоторые полезные функции
## English
There is one nasty problem. One you can encouter almost every time you work on fantranslation of game on this engine. And this is... lack of breaks! Not only AI5WIN's messagebox can contain too few symbols, this engine itself cannot print too many at once. But my tool, unlike some shabby string replacers, allows you to edit code fully and therefore solve all problem with breaks. This section also contains some other functions you may find useful.
Do note, methods here may not work on some script version.

### Line breaks
For line breaks you need to divide you text and insert command NEW_LINE with argument 0 between them.
For example, this...
```
#1-TEXT
[
    "Sunday. Even though it's a rain season now, today there is a slight window of clear weather. I went on a walk in park with Natsumi."
]
```
Should become that...
```
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
```

### Waiting for click
If you want user to wait for click between some commands, you need to insert in code command below.
```
#1-SYS
[
    [
        "*STRUCT*",
        "RAW",
        11,
        "STRUCT_END",
        []
    ],
    [
        "*VARIABLE*"
    ]
]
```

### Changing text color
One wanting to change the text color should insert in code the command below. You need to put color number in argument in STRUCT in EXPRESSION. For instance, 3 is for purple and 5 is for aqua.
```
#1-SYS
[
    [
        "*STRUCT*",
        "RAW",
        23,
        "STRUCT_END",
        []
    ],
    [
        "*VARIABLE*",
        "EXPRESSION",
        [
            [
                "*STRUCT*",
                "RAW",
                3,
                "STRUCT_END",
                []
            ]
        ]
    ]
]
```

### Messagebox clear
It is quite tricky to clear the messagebox in this engine. I won't give you a compicated explanation, just put the necessary command belo.w
```
#1-SYS
[
    [
        "*STRUCT*",
        "RAW",
        10,
        "STRUCT_END",
        []
    ],
    [
        "*VARIABLE*",
        "EXPRESSION",
        [
            [
                "*STRUCT*",
                "RAW",
                2,
                "STRUCT_END",
                []
            ]
        ],
        "EXPRESSION",
        [
            [
                "*STRUCT*",
                "RAW",
                5,
                "A_FLAG",
                [
                    0
                ],
                "STRUCT_END",
                []
            ]
        ],
        "EXPRESSION",
        [
            [
                "*STRUCT*",
                "RAW",
                6,
                "A_FLAG",
                [
                    0
                ],
                "STRUCT_END",
                []
            ]
        ],
        "EXPRESSION",
        [
            [
                "*STRUCT*",
                "RAW",
                7,
                "A_FLAG",
                [
                    0
                ],
                "STRUCT_END",
                []
            ]
        ],
        "EXPRESSION",
        [
            [
                "*STRUCT*",
                "RAW",
                8,
                "A_FLAG",
                [
                    0
                ],
                "STRUCT_END",
                []
            ]
        ]
    ]
]
```

### Ruturn position of text output at the beginning of messagebox
You can do it via editing the A flag, as showed below.
```
#1-A_FLAG_SET
[
    [
        "*STRUCT*",
        "RAW",
        9,
        "STRUCT_END",
        []
    ],
    0,
    [
        "*STRUCT*",
        "RAW",
        5,
        "A_FLAG",
        [
            0
        ],
        "STRUCT_END",
        []
    ],
    [
        "*GROUP*",
        [
            [
                "*STRUCT*",
                "RAW",
                6,
                "A_FLAG",
                [
                    0
                ],
                "STRUCT_END",
                []
            ]
        ]
    ]
]
```

### Message breaks
This is quite cumbersome to make a message break in AI5WIN engine. For it you need to subsequently enter the following commands: waiting for click, messagebox text erasing and returning the text output at the beginning of the messagebox. All the code is below.
```
#1-SYS
[
    [
        "*STRUCT*",
        "RAW",
        11,
        "STRUCT_END",
        []
    ],
    [
        "*VARIABLE*"
    ]
]
#1-SYS
[
    [
        "*STRUCT*",
        "RAW",
        10,
        "STRUCT_END",
        []
    ],
    [
        "*VARIABLE*",
        "EXPRESSION",
        [
            [
                "*STRUCT*",
                "RAW",
                2,
                "STRUCT_END",
                []
            ]
        ],
        "EXPRESSION",
        [
            [
                "*STRUCT*",
                "RAW",
                5,
                "A_FLAG",
                [
                    0
                ],
                "STRUCT_END",
                []
            ]
        ],
        "EXPRESSION",
        [
            [
                "*STRUCT*",
                "RAW",
                6,
                "A_FLAG",
                [
                    0
                ],
                "STRUCT_END",
                []
            ]
        ],
        "EXPRESSION",
        [
            [
                "*STRUCT*",
                "RAW",
                7,
                "A_FLAG",
                [
                    0
                ],
                "STRUCT_END",
                []
            ]
        ],
        "EXPRESSION",
        [
            [
                "*STRUCT*",
                "RAW",
                8,
                "A_FLAG",
                [
                    0
                ],
                "STRUCT_END",
                []
            ]
        ]
    ]
]
#1-A_FLAG_SET
[
    [
        "*STRUCT*",
        "RAW",
        9,
        "STRUCT_END",
        []
    ],
    0,
    [
        "*STRUCT*",
        "RAW",
        5,
        "A_FLAG",
        [
            0
        ],
        "STRUCT_END",
        []
    ],
    [
        "*GROUP*",
        [
            [
                "*STRUCT*",
                "RAW",
                6,
                "A_FLAG",
                [
                    0
                ],
                "STRUCT_END",
                []
            ]
        ]
    ]
]
```

## Russian
Есть одна неприятная проблема, с коей чуть ли не каждый раз столкнуться можно, когда работаешь над фанатским переводом игры на данном движке. Что же за проблема, спросите вы? Ответ же... недостаток переносов! Более того, в AI5WIN не просто не влезают сообщения, данный движок просто не может выводить слишком много символов за раз. Но моё средство, в отличии от всяких потрёпанных редакторов строк, позволяет вам полностью редактировать код. А, значит, и решить проблемы с переносами. Кроме того, в данной секции описывается ряд других полезных функций.
Заметьте, указанные здесь методы могут не работать во всех версиях скриптов.

### Переносы строк
Для переноса строк вам нужно разделить свой текст на два и между полученными фрагментами вставить команду NEW_LINE с аргументом 0.
Например, данный фрагмент...
```
#1-TEXT
[
    "Воскресенье. Хоть ныне и сезон дождей, сегодня голубое небо изволило ненадолго явиться. Я пошёл погулять в парк с Нацуми."
]
```
Должен превратиться в следующий...
```
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
```

### Ожидание нажатия мыши
Чтобы последующие команды (включая выведения текста) продолжили выполняться после нажатия на левую кнопку мыши, необходимо вставить в код команду, представленную ниже.
```
#1-SYS
[
    [
        "*STRUCT*",
        "RAW",
        11,
        "STRUCT_END",
        []
    ],
    [
        "*VARIABLE*"
    ]
]
```

### Изменение цвета текста
Желающий изменить цвет текста должен вставить код, ниже представленный, в скрипт. Заметиться, что в аргументе в STRUCT в EXPRESSION необходимо вставить номер цвета. В частности, 3 -- фиолетовый, а 5 -- голубой.
```
#1-SYS
[
    [
        "*STRUCT*",
        "RAW",
        23,
        "STRUCT_END",
        []
    ],
    [
        "*VARIABLE*",
        "EXPRESSION",
        [
            [
                "*STRUCT*",
                "RAW",
                3,
                "STRUCT_END",
                []
            ]
        ]
    ]
]
```

### Очистка диалогового окна
Очистить диалогое окно в данном движке, признаю, не так просто. Чтобы не мучить пользователей сложными измышлениями, просто представлю ниже команду, с помощью которой это можно сделать.
```
#1-SYS
[
    [
        "*STRUCT*",
        "RAW",
        10,
        "STRUCT_END",
        []
    ],
    [
        "*VARIABLE*",
        "EXPRESSION",
        [
            [
                "*STRUCT*",
                "RAW",
                2,
                "STRUCT_END",
                []
            ]
        ],
        "EXPRESSION",
        [
            [
                "*STRUCT*",
                "RAW",
                5,
                "A_FLAG",
                [
                    0
                ],
                "STRUCT_END",
                []
            ]
        ],
        "EXPRESSION",
        [
            [
                "*STRUCT*",
                "RAW",
                6,
                "A_FLAG",
                [
                    0
                ],
                "STRUCT_END",
                []
            ]
        ],
        "EXPRESSION",
        [
            [
                "*STRUCT*",
                "RAW",
                7,
                "A_FLAG",
                [
                    0
                ],
                "STRUCT_END",
                []
            ]
        ],
        "EXPRESSION",
        [
            [
                "*STRUCT*",
                "RAW",
                8,
                "A_FLAG",
                [
                    0
                ],
                "STRUCT_END",
                []
            ]
        ]
    ]
]
```

### Возврат "каретки" вывода текста в начало диалогового окна
Как показано ниже, это можно сделать с помощью изменения флага A.
```
#1-A_FLAG_SET
[
    [
        "*STRUCT*",
        "RAW",
        9,
        "STRUCT_END",
        []
    ],
    0,
    [
        "*STRUCT*",
        "RAW",
        5,
        "A_FLAG",
        [
            0
        ],
        "STRUCT_END",
        []
    ],
    [
        "*GROUP*",
        [
            [
                "*STRUCT*",
                "RAW",
                6,
                "A_FLAG",
                [
                    0
                ],
                "STRUCT_END",
                []
            ]
        ]
    ]
]
```

### Переносы по сообщениям
Переносы по сообщениям в AI5WIN делаются достаточно громоздко. Для это надо последовательно ввести команды: ожидания клика пользователя, стирание текста диалогового окна и перенос каретки в начало. Весь код представлен ниже.
```
#1-SYS
[
    [
        "*STRUCT*",
        "RAW",
        11,
        "STRUCT_END",
        []
    ],
    [
        "*VARIABLE*"
    ]
]
#1-SYS
[
    [
        "*STRUCT*",
        "RAW",
        10,
        "STRUCT_END",
        []
    ],
    [
        "*VARIABLE*",
        "EXPRESSION",
        [
            [
                "*STRUCT*",
                "RAW",
                2,
                "STRUCT_END",
                []
            ]
        ],
        "EXPRESSION",
        [
            [
                "*STRUCT*",
                "RAW",
                5,
                "A_FLAG",
                [
                    0
                ],
                "STRUCT_END",
                []
            ]
        ],
        "EXPRESSION",
        [
            [
                "*STRUCT*",
                "RAW",
                6,
                "A_FLAG",
                [
                    0
                ],
                "STRUCT_END",
                []
            ]
        ],
        "EXPRESSION",
        [
            [
                "*STRUCT*",
                "RAW",
                7,
                "A_FLAG",
                [
                    0
                ],
                "STRUCT_END",
                []
            ]
        ],
        "EXPRESSION",
        [
            [
                "*STRUCT*",
                "RAW",
                8,
                "A_FLAG",
                [
                    0
                ],
                "STRUCT_END",
                []
            ]
        ]
    ]
]
#1-A_FLAG_SET
[
    [
        "*STRUCT*",
        "RAW",
        9,
        "STRUCT_END",
        []
    ],
    0,
    [
        "*STRUCT*",
        "RAW",
        5,
        "A_FLAG",
        [
            0
        ],
        "STRUCT_END",
        []
    ],
    [
        "*GROUP*",
        [
            [
                "*STRUCT*",
                "RAW",
                6,
                "A_FLAG",
                [
                    0
                ],
                "STRUCT_END",
                []
            ]
        ]
    ]
]
```
