# der-faebu's Neovim setup.
## Prerequisites/General:
This repo assumes a Debian 12 installation with standard system utilities (selected during install). If thesese have not been installed, additional packages might be needed.

Additionally, as of version 0.10 of Neovim, the following packages are required for building it from source:
- git
- cmake
- gettext
- unzip
- curl
- build-essential

```bash
sudo apt update && sudo apt install -y git cmake gettext unzip curl build-essential
```

## Building nvim from source
### General
As many plugins require a relatively new version of neovim, we build it directly from the source.
This guide follows the official guide: https://github.com/neovim/neovim/blob/master/BUILD.md

#### Steps
1. Clone the repo: 
```bash
git clone https://github.com/neovim/neovim && cd neovim && git checkout release-0.10
```
2. Build as release
```bash
make CMAKE_BUILD_TYPE=Release CMAKE_EXTRA_FLAGS="-DCMAKE_INSTALL_PREFIX=$HOME/neovim" && \
make install && \
export PATH="$HOME/neovim/bin:$PATH"
```
This builds neovim, installs it to ~/neovim/bin and adds the directory to the PATH.

## Cloning the settings repo
```bash
mkdir -p ~/.config/nvim && git clone https://github.com/der-faebu/nvim-config ~/.config/nvim
```

## General folder structure
We consider the following folder structure:
```
├── init.lua
├── lua
│ ├── settings.lua
│ ├── keymappings.lua
│ ├── plugins 
│ │ └── telescope-settings.lua
│ ├── language-servers
│ │ ├── css.lua
│ │ ├── html.lua
│ │ ├── init.lua
│ │ ├── json.lua
│ │ ├── luals.lua
│ │ ├── python.lua
│ │ ├── typescript.lua
│ │ └── vue.lua
│ └── load-plugins.lua
├── README.md
```
## Plugin manager
Before starting further configuration we need to install packer
```bash
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

## Install Pulugins
Open nvim and type 
```bash
:PackerSync
```
Quit and reopen nvim et voilà.

# Useful shorthand
## Vim docs
### General
Buffer: visual representation of in-memory stuff
- a buffer can be opened in multiple Windows
Window: contains buffers

### Movements
#### Basic motions
v	highlight
V	highlight line
d	delete (to register) requiring motion
x	delete (to register) not requiring motion
c	change (delete to register) requirng motion and go to insert
y	yank (to register)
o   new line below and go to insert
O   new line above and go to insert

_	to the first character on the line
0	to the beginning of the line
$	to the last character of the line
f <char>	on next <char> 
    <motion>f<char>	motion including <char>
        df<char>	delete including <char>
F <char>	on last <char> (reverse)
t <char>	in front of next <char> 
    <motion>t<char>	motion excluding <char>
        dt<char>	delete excluding <char>
dt<char> delete excluding <char>

T <char>	behind last <char> (reverse) 
;	next occurence of <char>
,	last <char>

#### Advanced motions
{   go down one paragraph
}   go up one paragraph

Ctrl+d  Jump half page down
Ctrl+u  Jump half page up
zz  Place cursor in the center of page

/   Forward search for term
?   Backwards search for term
n   next result
N   last result

*   next Occurrence of current word
\#  last Occurrence of current word
### Insert mode
### Visual mode
vi' select between '' (select inner sigle quotes) also works for "
viB select between {} (select inner braces)
vib select between () (select inner block)
