# Disk usage monitoring
#!/bin/bash
df -h
awk 'NR==2 {print $5 }'
if [ $(awk 'NR==2 {print $5 }' | sed 's/%//') -gt 80 ]; them
    echo "Disk usage is above 80%. "
else
    echo "Disk usage is blow 80%. "
fi