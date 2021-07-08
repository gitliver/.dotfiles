## .dotfiles 
This repo contains various setup dotfiles---bash, vim, tmux, etc.---to make a unified shell environment across all systems.


First, clone this repo in your home directory:
```
cd
git clone ...
```

To make these dotfiles active, link to them in your `HOME` directory as follows:
```
ln -s .dotfiles/.bash_profile
ln -s .dotfiles/.bashrc
ln -s .dotfiles/.tmux.conf
ln -s .dotfiles/.vimrc
```

If you want to add local configuration files for bash, it looks for them in the following files (which you can create):
```
.dotfiles/bash/bash_aliases_local
.dotfiles/bash/bash_paths_local
.dotfiles/bash/bash_settings_local
.dotfiles/bash/bash_welcome_local
```

### For Mac Users

I like using the [GNU coreutils](http://www.gnu.org/software/coreutils/coreutils.html).
If you install the coreutils (`brew install coreutils`), you can activate them by editing `~/.dotfiles/bash/bash_settings_local` such that it's:

```
PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
export PATH

MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"
export MANPATH
```

### Notes

My `~/.dotfiles/bash/bash_aliases_share` presupposes you're using the [GNU coreutils](http://www.gnu.org/software/coreutils/coreutils.html).
