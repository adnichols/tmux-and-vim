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
```git clone https://github.com/adnichols/tmux-and-vim.git ~/.janus```

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

# Keyboard Mappings

I'll be growing this over time but for now here's a list of some of the more useful, but less known, keyboard shortcuts for this setup:

#### Movement:
```
gg - top of file
G - bottom of file
^ - start of line
$ - end of line
```

#### Move between panes
```
^L - RIGHT
^H - LEFT
^J - DOWN
^K - UP
```

#### Move between vim tabs
```
SHIFT+} - RIGHT
SHIFT+{ - LEFT
```

#### Tab Manipulation
```
^W R - swap top/bottom or left/right split
^W T - Break out current window into tab
^W o - close ever window in the current tab except current
```

#### Ctrlp - Hit ^p to start search
```
^z - Mark/unmark files, ^o to open them all
^t - Open file in new tab
^v - Open file in vertical split
^x - Open file in horizontal split
```

#### Insert:
```
i - insert mode
o - insert below line
O - insert above line
a - append after current character
c - change selection
cw - change entire word
```

#### Indentation / Comments
```
>> - indent 2 spaces
<< - un-indent 2 spaces
^?? - comment/un-comment selection/ line
```

#### Selection
```
v - start visual selection
V - select entire line
^n - multi-cursor select (esc 2x to exit multi-cursor)
^x - multi-cursor unselect
vii - select interior of block
```

#### Special
```
. - repeat last action
^p - open ctrlp to find files
,fef - format entire file
,a - open ack search
:Tabularize /:value - Align colums on :value
:%s/foo/bar/g - search for foo, replace with bar
cs - change surround - e.g. cs"' changes from " to '
,cap - Clear Ctrlp cache 
```

#### Nerdtree
```
hjkl - normal movement
m - file menu to modify a file
,n - open/close nerdtree
```

#### Helping yourself
```
:map , - show all keyboard mappings starting with ,
:map - show all keyboard mappings
```

Tmux
============
```
` - Meta char to start other commands
`p - Move to previous window ``
`n - Move to next window
`- - Horizontal split
`| - Vertical split
F11 - Modify Meta char to C-o for pasting stuff w/ `
F12 - Modify Meta char to ` for normal use
```

Tmux is also scriptable from command line, just run tmux-[tab tab] to see the options
