import sys
import cx_Freeze

base = None

if (sys.platform == 'win32'):
    base = "Win32GUI"


executables = [cx_Freeze.Executable("main.py",
                                    shortcut_name="AI5WINScriptTool",
                                    shortcut_dir="AI5WINScriptTool")]

cx_Freeze.setup(
        name="AI5WINScriptTool",
        version="1.1",
        description="Dual languaged (rus+eng) tool for compiling and decompiling mes scripts of AI5WIN.\n"
                    "Двухязычное средство (рус+англ) для компиляции и декомпиляции скриптов mes AI5WIN.",
        options={"build_exe": {"packages": []}},
        executables=executables
)
