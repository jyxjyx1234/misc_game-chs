import os
import shutil
import sys

def flatten_directory(source_dir):
    """
    Flattens all subdirectories in the given source directory.
    All files from subdirectories will be moved to the source directory.
    """
    if not os.path.isdir(source_dir):
        print(f"Error: {source_dir} is not a valid directory.")
        return

    # Get all files in all subdirectories
    for root, dirs, files in os.walk(source_dir, topdown=False):
        # Skip the source directory itself
        if root == source_dir:
            continue
        
        for file in files:
            source_file = os.path.join(root, file)
            # Create a unique name if a file with the same name already exists
            dest_file = os.path.join(source_dir, file)
            counter = 1
            base_name, ext = os.path.splitext(file)
            while os.path.exists(dest_file):
                dest_file = os.path.join(source_dir, f"{base_name}_{counter}{ext}")
                counter += 1
            
            # Move the file
            try:
                shutil.move(source_file, dest_file)
                print(f"Moved: {source_file} -> {dest_file}")
            except Exception as e:
                print(f"Error moving {source_file}: {e}")
    
    # Remove empty directories
    for root, dirs, files in os.walk(source_dir, topdown=False):
        if root == source_dir:
            continue
        try:
            os.rmdir(root)
            print(f"Removed empty directory: {root}")
        except OSError:
            print(f"Could not remove directory: {root} (it may not be empty)")

if __name__ == "__main__":
    if len(sys.argv) > 1:
        source_dir = sys.argv[1]
    else:
        source_dir = input("Enter the directory path to flatten: ")
    
    confirm = input(f"This will move all files from subdirectories into {source_dir}. Continue? (y/n): ")
    if confirm.lower() == 'y':
        flatten_directory(source_dir)
        print("Flattening completed.")
    else:
        print("Operation cancelled.")