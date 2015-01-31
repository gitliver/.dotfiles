## .dotfiles 
This repo contains various setup dotfiles---bash, vim, tmux, etc.---to make a unified shell environment across all systems.

To make these dotfiles active, link to them from your `HOME` as follows:
```
cd
ln -s .dotfiles/.bash_profile
ln -s .dotfiles/.bashrc
ln -s .dotfiles/.tmux.conf
ln -s .dotfiles/.vimrc
ln -s .dotfiles/.gitconfig
```

Also, if you want to add local configuration files for bash, it looks for them in the following files (which you can create):
```
.dotfiles/bash/bash_aliases_local
.dotfiles/bash/bash_paths_local
.dotfiles/bash/bash_settings_local
.dotfiles/bash/bash_welcome_local
```
