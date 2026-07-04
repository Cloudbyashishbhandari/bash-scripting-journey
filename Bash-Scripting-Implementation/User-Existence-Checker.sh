# user existence checker
USER_NAMES=("ashish_bhandari" "Jhon" "Smith" "David")
for USER in "${USER_NAMES[@]}"; do
    if id "$USER" &>/dev/null; then
        echo "User $USER exists."
    else
        echo "User $USER does not exist."
    fi
done
