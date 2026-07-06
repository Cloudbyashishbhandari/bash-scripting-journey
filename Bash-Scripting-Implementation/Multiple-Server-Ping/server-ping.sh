IP_FILE=$(find . -name "*.txt")
for IP in $IP_FILE; do
   while read PING; do
   PIN=$(echo "$PING" | sed 's/\r$//' )
   echo "======================="
   echo "=====PINGING-IP $PIN ======="
   echo "========================"
    
   
    if ping -c 2 "$PIN" & >/dev/null; then
            echo "Service is reachable for the IP: $PIN"
        else 
            echo "Service is not reachable for the IP: $PIN"
        fi
   done < "$IP" 
done



