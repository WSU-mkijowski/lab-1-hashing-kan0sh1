#!/bin/bash

## have to split the sequence for the nonce apart. 
## when the nonce seq is too wide causes my laptop to abort mission and crash.
## also updated dictionary file with more words to search.
## Ranges I found success with: 10 to 9999, 10000 to 99999,

for i in $(cat ../data/dictionary); do
   for x in $(seq 10 9999); do
           crypto_key=$(echo -n "$x$i" | sha256sum | awk '{print $1}')
      if [[ "$crypto_key" =~ ^0000 ]]; then
          echo "Winning hash: $crypto_key From word $x$i"
      fi
   done
done


echo "end of script."
