#!/bin/sh
# Quick setup

# Check dependencies
# Check dependencies
curl --version >/dev/null 2>&1 || { echo >&2 "curl is required. Abort" ; exit 1; }
git --version >/dev/null 2>&1 || { echo >&2 "git is required. Abort" ; exit 1; }
rake --version >/dev/null 2>&1 || { echo >&2 "rake is required. Abort" ; exit 1; }
ack --version >/dev/null 2>&1 || { echo >&2 "WARN: ack not found"; }
ag --version >/dev/null 2>&1 || { echo >&2 "WARN: ag not found"; }

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
git submodule init
git submodule update

echo ""
echo "Done!"
echo ""
