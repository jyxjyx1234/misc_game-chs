import sys, os
from PIL import Image

def help():
    fn = sys.argv[0]
    print(f"Usage: python {fn} <input_png> <output_bmp>")
    print(f"Usage: python {fn} <input_png_folder> <output_folder>")

try:
    ori = sys.argv[1]
    out = sys.argv[2]
except:
    help()
    sys.exit(1)

def conv(infile, outfile):
    if not infile.lower().endswith(".png"):
        print(f"Skipped (not png): {infile}")
        return
    if not outfile.lower().endswith(".bmp"):
        outfile += ".bmp"
    img = Image.open(infile)
    img_mask = img.getchannel("A")
    img = img.convert("RGB")
    img.save(outfile)
    maskfile = outfile[:-4] + "_.bmp"
    img_mask.save(maskfile)
    print(f"Saved: {outfile} and {maskfile}")

if os.path.isfile(ori):
    conv(ori, out)
elif os.path.isdir(ori):
    if not os.path.exists(out):
        os.makedirs(out)
    for fn in os.listdir(ori):
        infile = os.path.join(ori, fn)
        outfile = os.path.join(out, fn.replace(".png", ".bmp"))
        conv(infile, outfile)