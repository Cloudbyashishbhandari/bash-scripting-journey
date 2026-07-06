PING=$(find . -name "*.txt" -type f)
for IP in $PING; do
    echo " reading file : $IP"
        while IFS= read -r EC2_IP || [ -n "$EC2_IP" ]; do
            [ -z "$EC2_IP" ] && continue
            echo "IP: $_EC2_IP" 
            
            if nmap -p 22 "$EC2_IP" | grep -q "22/tcp open"; then
                echo "SSH service is reachable for thE EC2 instance with the IP: $EC2_IP"
            else 
                echo "SSH service is not reachable for the EC2 instance with the IP: $EC2_IP"
            fi
        done < "$IP"
done