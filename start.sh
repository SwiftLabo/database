#create or modify database here

command -v jq >/dev/null 2>&1 || { echo >&2 "I require jq but it's not installed. installing"; sudo apt install jq -y >> /dev/null; }

function relistdevice(){
    jq -rs '. | map({name, codename, pictures})' data/device/*/*.json > data/list/device.json
}

function createnewdevice(){
    if [ -z $1 ] 
    then
      echo "Error: Please Specify The Device Name"
      return
    fi
        if [ -z $2 ] 
    then
      echo "Error: Please Specify The Device Codename"
      return
    fi
            if [ -z $3 ] 
    then
      echo "Error: Please Specify The Device Maintainer"
      return
    fi
                if [ -z $3 ] 
    then
      echo "Error: Please Specify The Device Pictures"
      return
    fi
    Name=$1
    Codename=$2
    Maintainer=$3
    Pictures=$4
    printf "{\n    \"Name\": \"$Name\",\n    \"Codename\": \"$Codename\",\n    \"Maintainer\": \"$Maintainer\",\n    \"Pictures\": \"image/$Pictures\",\n    \"Filename\": \"$Filename\",\n    \"BuildDate\": \"$BuildDate\",\n    \"Android\": \"13\",\n    \"Download\": \"$Download\",\n    \"isAvailable\": \"$Download\"\n}" > sa
}