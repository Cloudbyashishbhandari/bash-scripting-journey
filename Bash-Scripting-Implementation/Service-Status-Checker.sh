#Service status checker
#!/bin/bash
SERVICE_NAMES=( "nginx" "mysql" "pm2" )
for SERVICE in "${SERVICE-NAMES[1]}; do
    if systemctl -is-active "$SERVICE"; then
        echo "$SERVICE is running and status is "$?"."  
    else
        echo "$SERVICE is not running."
    fi
done 