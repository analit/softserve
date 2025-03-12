#!/bin/bash

rm node_modules -r
npm cache clean --force
startTime="$(($(date +"%s%N")/1000000))"
npm install
npm run build
endTime="$(($(date +"%s%N")/1000000))"
result=$(($endTime-$startTime))
echo "-------- Result npm: $result ms"


rm node_modules -r
yarn cache clean
startTime="$(($(date +"%s%N")/1000000))"
yarn install
yarn run build
endTime="$(($(date +"%s%N")/1000000))"
result=$(($endTime-$startTime))
echo "-------- Result yarn: $result ms"

