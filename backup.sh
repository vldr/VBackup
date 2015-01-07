#!/bin/sh

# 		#		#		#
#		#		#		#
#		  TARGET		#
#		#		#		#
#		#		#		#
backup_files="/"

# 		#		#		#
#		#		#		#
#		DESTINATION		#
#		#		#		#
#		#		#		#
dest="/root/backup"

day=$(date +%m-%d-%y)
hostname=$(hostname -s)
fileName="$hostname-$day.tgz"

gR='\033[0;36m'
NC='\033[0m'
clear
echo "${gR}"
cat << "EOF" 
 __      __ ____                _                  
 \ \    / /|  _ \              | |                 
  \ \  / / | |_) |  __ _   ___ | | __ _   _  _ __  
   \ \/ /  |  _ <  / _` | / __|| |/ /| | | || '_ \ 
    \  /   | |_) || (_| || (__ |   < | |_| || |_) |
     \/    |____/  \__,_| \___||_|\_\ \__,_|| .__/ 
                                            | |    
                                            |_|    
EOF
echo "${NC}"
echo "${gR}Script will backup: $backup_files to $dest/$fileName${NC}"
read -r -p "Are you sure you want start the backup? [y/N]" response
case $response in
    [yY][eE][sS]|[yY]) 
		clear
		echo "${gR}Backup has started, $fileName!${NC}"
		tar czf $dest/$fileName $backup_files

		clear
		echo "${gR}Backup completed!${NC}"
        ;;
    *)
		clear
        echo "${gR}Backup stopped, closing script!${NC}"
        exit
        ;;
esac
