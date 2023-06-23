#!/bin/bash -x

#Author:Seema Tripathi
#Date:25/06/2023

echo "Hello,This script will take the backup of the workspace"

timestamp=$(date +%Y%m%d%H%M%S)

source="/home/ubuntu/source_folder"

destination="/home/ubuntu/backup_folder"

if [ -e "$destination" ]
then 
	echo "Directory already exists"
else
	mkdir -p $destination
	echo "Directory created"
fi

backup_path="$destination/backup_$timestamp.tar.gz"

tar -czf "$backup_path" "$source"

if [ $? -eq 0 ];
then
	echo "Backup created at location $destination"
else
	echo "Failed to create backup"
fi
