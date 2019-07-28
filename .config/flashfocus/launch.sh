#!/usr/bin/env sh

if pgrep -u $UUID -x flashfocus > /dev/null 
then
         exit;
fi      
 
flashfocus
