#!/bin/bash
# invetigate about sheband

# Update the system and get the dependencies

if ! nmap -v COMMAND &> /dev/null
then
    echo "Nmap could not be found, installing..."
sudo apt-get update && sudo apt-get upgrade
sudo apt install nmap -y

    exit
fi




# Show A banner or Logo

cat utils/banner.txt

# Print a Welcome Text
echo "								Be More...H4ck3r"


# prompt the user for the target url
echo "

"
printf "Please enter the target URL : "
read -r targetURL

# Get the public ip address of the domain
targetIP=$(host $targetURL | grep "has address" | cut -d " " -f 4)


# Get the open ports of the public IP
echo "The target URL has the next port expose to Internet"
nmap $targetIP | grep "open" | cut -d " " -f 1

