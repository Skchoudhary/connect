#! /bin/bash

# Loading the config file with details
config_path="./servers.json"
servers=(s1 s2 cmm)
# echo $(cat $config_path | jq '.'$1)
echo $1
if [[ " ${servers[@]} " =~ $1 ]]; then
    ip=$(cat $config_path | jq -r '.'$1'.ip')
    pem=$(cat $config_path | jq -r '.'$1'.pem')
    name=$(cat $config_path | jq '.'$1'.name')
    #echo "Logging in to $name $ip $pem ..."
    sudo ssh -i $pem ubuntu@$ip
else
    echo "Wrong args passed"
fi

