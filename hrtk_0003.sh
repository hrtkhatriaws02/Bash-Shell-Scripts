#!/bin/bash

# Sample log file
log_file="sample.log"

# Create a demo log file
cat <<EOF > $log_file
2025-07-09 10:00:00 INFO User john logged in
2025-07-09 10:05:23 ERROR Database connection failed
2025-07-09 10:10:11 INFO User alice logged out
2025-07-09 10:12:45 WARN Disk usage at 90%
2025-07-09 10:15:00 INFO User john uploaded file
2025-07-09 10:18:34 ERROR Failed to write to log
2025-07-09 10:20:55 INFO System check complete
EOF

echo -e "\n🔍 1. grep — Find all ERROR lines:"
grep "ERROR" "$log_file"

echo -e "\n🔎 2. awk — Show date and log level only:"
awk '{print $1, $2, $3}' "$log_file"

echo -e "\n✂️ 3. cut — Extract log levels (3rd column):"
cut -d' ' -f3 "$log_file" | sort | uniq -c

echo -e "\n🪚 4. sed — Replace 'User' with 'Client':"
sed 's/User/Client/g' "$log_file"

echo -e "\n⬆️ 5. sort — Sort lines by time:"
sort -k2 "$log_file"

echo -e "\n🔚 6. tail — Last 2 log lines:"
tail -n 2 "$log_file"

echo -e "\n🔝 7. head — First 3 log lines:"
head -n 3 "$log_file"

# Clean up demo file
rm "$log_file"
