#!/bin/sh
# Quick setup

# Check dependencies
for dependency in curl git rake ; do 
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

echo "****************************"
echo " Setting up Configs"
echo "****************************"

for config in before after ; do
  if [ -f ~/.vimrc.${config} ];then
    mv -v ~/.vimrc.${config} ~/.vimrc.${config}_old
  fi

  ln -vs ~/.janus/setup/_${config} ~/.vimrc.${config}
done

# Setup tmux

if [ -f ~/.tmux.conf ]; then
  mv -v ~/.tmux.conf ~/.tmux.conf_old
fi

ln -vs ~/.janus/setup/_tmux.conf ~/.tmux.conf

echo "******************************"
echo " Setting up Additional plugins"
echo "******************************"

cd ~/.janus
git submodule update

echo ""
echo "Done!"
echo ""
