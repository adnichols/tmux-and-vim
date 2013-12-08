Aaron's Tmux & Vim setup
===================
This setup is a combination of
[janus](https://github.com/carlhuda/janus) and the configs from
[maximum-awesome](https://github.com/square/maximum-awesome) with some
of my own opinions thrown in. It's a very opinionated vim configuration,
use it as a base, don't be hurt if it changes in ways you don't like. 

This is mostly here to make life easier for me when setting up a new
system

# What it does
- Installs janus
- Installs any of the submodules in this repo
- links a .vimrc.before and .vimrc.after to setup things the way I like
  them
- links a .tmux.conf to setup things the way I like them

# Setup

Clone into ~/.janus   
```git clone https://github.com/adnichols/vim-janus.git ~/.janus```

Run setup   
```sh ~/.janus/setup/setup.sh```

# Dependencies

Mostly due to janus this has a few dependencies:

- ruby & rake
- curl
- git
- tmux and vim (but you knew that)

It assumes you are running a modern version of vim - I use 7.4, so if
you aren't using that then chances are stuff in here may not work. 
