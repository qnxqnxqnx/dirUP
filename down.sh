#!/bin/sh


if [[ "$DIRHIST" == *"$PWD"* ]] && [[ ! "$DIRHIST" == "$PWD" ]]
then
  if [ "$PWD" = "/" ]; then
    num_of_next_dir=2
  else
    num_of_dirs_in_pwd_including_root=$(echo $PWD | tr '/' '\n' | wc -l)
    num_of_next_dir=$(($num_of_dirs_in_pwd_including_root+1))
  fi
  next_dir=$(echo $DIRHIST|cut -d"/" -f$num_of_next_dir) 
  cd $next_dir 
else
  if [ $(ls -l | grep -c '^d') -eq 1 ]; then
    cd $(echo */ | sed 's#/##')
    DIRHIST=$PWD
  fi
fi

