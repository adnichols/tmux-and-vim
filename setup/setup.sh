#!/bin/sh
# Quick setup

# Check dependencies
for dependency in curl git ; do 
  if [! -e ${dependency} ]; then
    echo "FAILED DEPENDENCY: ${dependency} is not installed... exiting"
    exit
  fi
done

# Setup janus
echo "****************************"
echo " Setting up Janus"
echo "****************************"

cd ${HOME}
curl -Lo- https://bit.ly/janus-bootstrap | bash

# Setup overrides 

for config in before after ; do
  if [-f ~/.vimrc.${config} ];then
    mv ~/.vimrc.${config} ~/.vimrc.${config}_old
  fi

  ln -s ~/.janus/setup/_${config} ~/.vimrc.${config}
done
