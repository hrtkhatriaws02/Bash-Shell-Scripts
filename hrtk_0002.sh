#!/bin/bash

# 1. pwd - print current directory
echo "Current directory is:"
pwd

# 2. mkdir - create a new folder
echo "Creating folder 'demo_folder'..."
mkdir demo_folder

# 3. cd - change into the new folder
cd demo_folder

# 4. touch - create a new empty file
echo "Creating empty file 'file1.txt'..."
touch file1.txt

# 5. echo - write text into the file
echo "Hello, this is a demo file." > file1.txt

# 6. cat - display file contents
echo "Contents of 'file1.txt':"
cat file1.txt

# 7. cp - copy file1.txt to file2.txt
echo "Copying 'file1.txt' to 'file2.txt'..."
cp file1.txt file2.txt

# 8. ls - list directory contents
echo "Listing directory contents:"
ls

# 9. mv - rename file2.txt to file_renamed.txt
echo "Renaming 'file2.txt' to 'file_renamed.txt'..."
mv file2.txt file_renamed.txt

# 10. rm - remove file1.txt
echo "Deleting 'file1.txt'..."
rm file1.txt

# 11. alias - create a shortcut command
alias ll='ls -l'

echo "Using alias 'll' to list detailed contents:"
ll

# 12. man - show manual for a command (uncomment if you want to display, note: this pauses script)
# echo "Showing manual page for ls command (press q to quit):"
# man ls

# 13. cd back to parent directory
cd ..

# 14. Remove the demo folder
echo "Cleaning up: deleting 'demo_folder'..."
rm -r demo_folder

echo "Script complete."