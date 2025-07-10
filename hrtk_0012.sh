#!/bin/bash

# Create some test files
echo "File 1 content" > file1.txt
echo "File 2 content" > file2.txt

# 1. Zip files into archive.zip
echo "Creating zip archive.zip with file1.txt and file2.txt"
zip archive.zip file1.txt file2.txt

# 2. Unzip archive.zip into folder unzip_dir
echo "Unzipping archive.zip into unzip_dir/"
mkdir -p unzip_dir
unzip archive.zip -d unzip_dir

# 3. Create tar archive (tarball) archive.tar containing file1.txt and file2.txt
echo "Creating tar archive archive.tar with file1.txt and file2.txt"
tar -cvf archive.tar file1.txt file2.txt

# 4. Create gzipped tar archive archive.tar.gz
echo "Creating gzipped tar archive archive.tar.gz"
tar -czvf archive.tar.gz file1.txt file2.txt

# 5. Extract tar archive.tar into tar_extract_dir/
echo "Extracting archive.tar into tar_extract_dir/"
mkdir -p tar_extract_dir
tar -xvf archive.tar -C tar_extract_dir

# 6. Extract gzipped tar archive.tar.gz into tar_gz_extract_dir/
echo "Extracting archive.tar.gz into tar_gz_extract_dir/"
mkdir -p tar_gz_extract_dir
tar -xzvf archive.tar.gz -C tar_gz_extract_dir

# Cleanup test files
rm file1.txt file2.txt

echo "Done."