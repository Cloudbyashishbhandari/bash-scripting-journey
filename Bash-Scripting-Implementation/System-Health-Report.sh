{
echo "======================="
echo "SYSTEM REPORT"
echo "======================="

echo "Hostname: $(hostname)"
echo "Current User: $(whoami)"
echo "Kernel Version: $(uname -r)"
echo "CPU Usage: $(top -bn1 | grep "Cpu(s)" | awk '{print $2}')"
echo "Memory Usage: $(free -h | awk 'NR==2 {print $3}')"
echo "Disk Usage: $(df -h | awk 'NR==4 {print $4}' )"
echo "System Uptime: $(uptime)"
} > system-status.txt