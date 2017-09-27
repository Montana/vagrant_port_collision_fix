#!/bin/bash

##
#  Show the user what we're looking to remove from the network configs.
##

printf "\nWe've located the following entries matching the associated port argument. \n"
grep "add_nat_portfwd" /Library/Preferences/VMware\ Fusion/networking | grep $1
grep $1 /Library/Preferences/VMware\ Fusion/vmnet8/nat.conf


## 
#  Prompt the user for confirmation.
##

printf "\n"
read -p "Are you sure you would like to remove the entries listed above?" -n 1 -r
printf "\n"


##
#  Get jiggy wit it.
##

if [[ $REPLY =~ ^[Yy]$ ]]
then

  printf "Deleting ... \n"
 
  # MAX OSX sed commands
  # sed -i '' '/$1/d' /Library/Preferences/VMware\ Fusion/vmnet8/nat.conf
  # sed -i '' '/$1/d' /Library/Preferences/VMware\ Fusion/networking 

  # Linux sed commands
  sed -i.bak '/$1/d' /Library/Preferences/VMware\ Fusion/vmnet8/nat.conf
  sed -i.bak '/$1/d' /Library/Preferences/VMware\ Fusion/networking 

else

  printf "No files we hurt in the making of this script.\n"

fi
