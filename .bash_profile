# .bash_profile file, inspired by grepinsight :)
# Oliver 
# 20130726

# the directory where bash configuration files reside
INIT_DIR="${HOME}/.dotfiles/bash"

# to make local configurations, add these files into this directory:
# bash_aliases_local
# bash_paths_local
# bash_settings_local
# bash_welcome_local

# this line, e.g.,  protects the functionality of rsync by only turning on the below if the shell is in interactive mode 
# In particular, rsync fails if things are echo-ed to the terminal
[[ "$-" != *i* ]] && return

# bash welcome
if [ -e "${INIT_DIR}/bash_welcome_local" ]; then
	cat ${INIT_DIR}/bash_welcome_local
elif [ -e "${INIT_DIR}/bash_welcome_share" ]; then
	cat ${INIT_DIR}/bash_welcome_share
fi

#--------------------LOCAL------------------------------
# aliases local
if [ -e "${INIT_DIR}/bash_aliases_local" ]; then
	source "${INIT_DIR}/bash_aliases_local"
	echo "bash_aliases_local loaded"
fi

# settings local
if [ -e "${INIT_DIR}/bash_settings_local" ]; then
	source "${INIT_DIR}/bash_settings_local"
	echo "bash_settings_local loaded"
fi

# paths local
if [ -e "${INIT_DIR}/bash_paths_local" ]; then
	source "${INIT_DIR}/bash_paths_local"
	echo "bash_paths_local loaded"
fi

#---------------SHARE-----------------------------
# aliases share
if [ -e "${INIT_DIR}/bash_aliases_share" ]; then
	source "${INIT_DIR}/bash_aliases_share"
	echo "bash_aliases_share loaded"
fi

# settings share
if [ -e "${INIT_DIR}/bash_settings_share" ]; then
	source "${INIT_DIR}/bash_settings_share"
	echo "bash_settings_share loaded"
fi

# functions share
if [ -e "${INIT_DIR}/bash_functions_share" ]; then
	source "${INIT_DIR}/bash_functions_share"
	echo "bash_functions_share loaded"
fi

echo

cal 
echo -e "Today is "$( date )"\n"
# Set PATH, MANPATH, etc., for Homebrew.
eval "$(/opt/homebrew/bin/brew shellenv)"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/opt/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/opt/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

