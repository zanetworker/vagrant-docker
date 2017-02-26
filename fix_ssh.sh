#!/bin/bash 

if test -f ~/.ssh/authorized_keys; then
   grep -v -x -f '#{remote_path}' ~/.ssh/authorized_keys > ~/.ssh/authorized_keys.tmp
   mv ~/.ssh/authorized_keys.tmp ~/.ssh/authorized_keys
+              chmod 0600 ~/.ssh/authorized_keys
 fi

 rm -f '#{remote_path}'
