while true; do
read -p "Enter the number: " NUM
    case $NUM in
        1) 
            echo "$NUM. Current Date: $(date)" ;;
        2) 
            echo "$NUM. Current User: $USER" ;;
        3) 
            echo "$NUM. Current Directory: $PWD" ;;
        4) 
            echo "$NUM. Memory Usage: $(free -h | awk 'NR==2 {print $3}')" ;;
        5) 
            echo "$NUM. Exiting"
            break ;;
    esac
done