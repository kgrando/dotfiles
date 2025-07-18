# dotfiles

## General

This repo contains all dotfiles and general application config of kgrando, forked from der-faebu's systems.

## File structure

The directory layout of this repo is designed to work with stow.
Thereofre, we rely upon a certain folder structure in order for the dotfiles to be symlinked to the right place.
It is assumed that this repo is cloned into a hidden folder (.dofiles) directly in the user profile.
By default, stow will set the target path to the parent folder of itself (= the user's profile).
Every package (= subdirectory containing fine configs) must therefore respect his layout.

## Setup a new machine / Add configurations

Due to its nature of being a symlink manager, adding neu configs and deploying new machines work in the same way.
In order to setup a new machine follow these instructions.

1. Install  
    ``` sudo apt install git htop kitty neofetch neovim trash-cli ranger ```  
    ``` brew install nushell tmux jandedobbeleer/oh-my-posh/oh-my-posh yazi k9s kubecm kubectl-cnpg stow ```  
    ``` brew install --cask font-fira-code-nerd-font ```  
    ``` git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm ```
2. add Nerd Fonts to the Shell, each terminal emulator has its own way of doing this, so please refer to the documentation of your terminal emulator.
3. Clone this repo ``` git clone --config core.autocrlf=input --config core.eol=lf https://github.com/kgrando/dotfiles.git $HOME/.dotfiles ```
4. If you just want to add a new config, create the folder structure witin the repo and move the config files to there.
5. Run ```stow <dir_name>``` to create the simlinks in the cloned directory. ``` stow bash htop kitty neofetch nushell nvim poshthemes tmux yazi ```
6. tmux session -> ``` crtl + B : ``` -> ``` source-file ~/.tmux.conf ```

## MacOS

1. Install  
    ``` brew install bash git htop kitty neovim trash-cli ranger nushell tmux jandedobbeleer/oh-my-posh/oh-my-posh yazi k9s kubecm kubectl-cnpg stow bash-completion@2 ```  
    ``` brew install --cask font-fira-code-nerd-font ```  
    ``` git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm ```
2. add Nerd Fonts to the Shell, each terminal emulator has its own way of doing this, so please refer to the documentation of your terminal emulator.
3. Clone this repo ``` git clone --config core.autocrlf=input --config core.eol=lf https://github.com/kgrando/dotfiles.git $HOME/.dotfiles ```
4. If you just want to add a new config, create the folder structure witin the repo and move the config files to there.
5. Run ```stow <dir_name>``` to create the simlinks in the cloned directory. ``` stow bash htop kitty neofetch nushell nvim poshthemes tmux yazi ```
6. tmux session -> ``` crtl + B : ``` -> ``` source-file ~/.tmux.conf ```
