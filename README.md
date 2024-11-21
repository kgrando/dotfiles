# dotfiles
## General

This repo contains all dotfiles and general application config of der-faebu's systems.

## File structure

The directory layout of this repo is designed to work with stow.
Thereofre, we rely upon a certain folder structure in order for the dotfiles to be symlinked to the right place.
It is assumed that this repo is cloned into a hidden folder (.dofiles) directly in the user profile.
By default, stow will set the target path to the parent folder of itself (= the user's profile).
Every package (= subdirectory containing fine configs) must therefore respect his layout. 

## Setup a new machine / Add configurations
Due to its nature of being a symlink manager, adding neu configs and deploying new machines work in the same way.
In order to setup a new machine follow these instructions.

1. Install git
2. Clone this repo ```git clone https://github.com/der-faebu/dotfiles.git ```
3. If you just want to add a new config, create the folder structure witin the repo and move the config files to there.
4. Run ```stow <dir_name>``` to create the simlinks. Runnig ```stow .``` will link every single module.
5. Done
