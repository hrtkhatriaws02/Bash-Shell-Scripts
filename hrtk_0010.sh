#!/bin/bash

# Create a test file
echo "This is a test file." > demo_file.txt

# Show initial permissions
echo "Initial permissions:"
ls -l demo_file.txt

# 1. chmod - change permissions (e.g., make it readable and writable only by the owner)
echo "Setting permissions to rw------- (600)..."
chmod 600 demo_file.txt

# Show updated permissions
echo "Updated permissions:"
ls -l demo_file.txt

# 2. chown - change owner (only works if you have permissions, e.g., sudo)
# Uncomment the following line if you want to test changing owner (requires sudo)
# echo "Changing owner to root (requires sudo)..."
# sudo chown root demo_file.txt

# Show owner (will be root if chown succeeded)
echo "Owner after chown attempt:"
ls -l demo_file.txt

# 3. chgrp - change group (e.g., set to 'staff' group, adjust group as per your system)
# This might need sudo or correct group membership
# Replace 'staff' with an actual group on your system if needed
# echo "Changing group to staff (may require sudo)..."
# sudo chgrp staff demo_file.txt

# Show final ownership and permissions
echo "Final file info:"
ls -l demo_file.txt

# Cleanup
echo "Deleting demo file..."
rm demo_file.txt

echo "Script complete."