#! /bin/bash

IP=$(dig +short myip.opendns.com @resolver1.opendns.com)
echo $IP
#echo 12.34.56.78
