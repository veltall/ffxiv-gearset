#!/bin/bash

# Takes a loooooooonnngggg time to download all 800+ json files
# please don't use unless absolutely necessary
header='https://api.xivdb.com/action/'

for skill in $(ls ../images/res/raw); do
    id=$(echo $skill | sed 's/_.*$//g')
    URL=$header$id
    curl $URL --output $skill.json
done