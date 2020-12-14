#! /bin/bash

# $1 can be one of the given option(s) help, servers keys.
config_path="./servers.json"
# get all the valid servers keys
servers=$(cat servers.json | jq 'keys')

# check the args passed is valid server keys or not
if [[ " ${servers[@]} " =~ $1 ]]; then
    ip=$(cat $config_path | jq -r '.'$1'.ip')
    pem=$(cat $config_path | jq -r '.'$1'.pem')
    name=$(cat $config_path | jq '.'$1'.name')
    sudo ssh -i $pem ubuntu@$ip
elif [ "$1" == "help" ]; then
    echo "run comand as shown below"
    echo ">>> ./connect server_keys"
    echo -e "valid args \n $servers"
else
    echo "Wrong args passed"
    echo -e "valid args \n $servers"
fi


