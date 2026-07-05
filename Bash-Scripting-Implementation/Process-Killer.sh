read -p "Enter the process name to kill:" PROCESS_NAME
if pgrep "$PROCESS_NAME" > /dev/null 
then 
    kill $(pgrep "$PROCESS_NAME")
    echo "process $PROCESS_NAME has been killed."
    else
    echo "process $PROCESS_NAME not found."