from Lib import *

for file in os.listdir("scenario_noruby"):
    if file.endswith(".mjil"):
        with open("scenario_noruby/"+file, "r", encoding="utf-8") as f:
            lines = f.read()
        with open("scenario_noruby/"+file, "w", encoding="utf-8") as f:
            lines = re.sub(r'(?<=ldstr         ").{1,}?(?="\n  callp         \$3198fd01)', " ", lines)
            f.write(lines)