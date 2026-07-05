IP_FILE=$(find . -name "*.txt")
for IP in $IP_FILE; do
   cat $IP | while read PING; do
   echo "$PING" > /dev/null
   echo "$(ping -c 2 $PING)"; 
   if [ $? -eq 0 ]; then
        echo "Service is reachable for the IP: $PING"
    else 
        echo "Service is not reachable for the IP: $PING"
    fi
   done
done



#for IP in $IP_FILE; do
 #   echo "pinging | while read $IP: $(ping -c 2 $IP)"
  #  echo "$?"
#done