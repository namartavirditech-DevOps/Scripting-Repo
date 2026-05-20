#!/bin/bash

echo "Enter the username:"
read username

echo "Enter the group name:"
read groupname

echo "Enter the folder name:"
read foldername

sudo groupadd $groupname
echo "Group $groupname created"

sudo adduser $username
echo "User $username created"

sudo usermod -aG $groupname $username
echo "User $username added to $groupname group"

sudo mkdir -p $foldername
echo "Folder $foldername created"

sudo chown $username:$groupname $foldername

sudo chmod 753 $foldername
echo "Permission set for $foldername"

