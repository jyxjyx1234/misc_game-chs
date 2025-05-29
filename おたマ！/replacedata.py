import os
import shutil

oripath = "D:\\game\\おたマ！\\data\\"
patchpath = "release\\patch\\"

def replace_files():
    for root, dirs, files in os.walk(oripath):
        for file in files:
            original_file_path = os.path.join(root, file)
            
            # Calculate the relative path from oripath
            relative_path = os.path.relpath(original_file_path, oripath)
            
            # Construct the corresponding path in patchpath
            patch_file_path = os.path.join(patchpath, file)
            
            # Check if the file exists in patchpath
            if os.path.exists(patch_file_path):
                print(f"Replacing {original_file_path} with {patch_file_path}")
                # Copy the file from patch to original, overwriting it
                shutil.copy2(patch_file_path, original_file_path)

if __name__ == "__main__":
    replace_files()