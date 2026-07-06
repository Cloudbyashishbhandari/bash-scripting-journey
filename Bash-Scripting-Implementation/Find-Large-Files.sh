read -p "Enter the directory path to search for the large files: " DIR_PATH
if [ -d "${DIR_PATH}" ]; then
    echo -e "\nSearching for the large files inside the directory: ${DIR_PATH}"
    find "${DIR_PATH}" -type f -exec du -h {} + | sort -rh | head -n 3
else
    echo "The provided path is not a valid directory. Please provide a valid directory path."   
fi