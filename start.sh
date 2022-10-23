#create or modify database here

command -v jq >/dev/null 2>&1 || { echo >&2 "I require jq but it's not installed. installing"; sudo apt install jq -y >> /dev/null; }

function relistdevice(){
    jq -rs '. | map({name, codename, pictures})' data/device/*/*.json > data/list/device.json
}

function createnewdevice(){
    if [ -z $1 ] 
    then
        echo lul
    fi
}