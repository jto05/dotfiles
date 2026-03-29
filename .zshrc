# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH 
export PATH="$PATH:/opt/nvim-linux-x86_64/bin:$PATH/.cargo/bin"

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"


# Set name of the theme to load --- if set to "random", it will
# load a random theme each time Oh My Zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# vi-mode
typeset -g VI_MODE_SET_CURSOR=true
typeset -g VI_MODE_CURSOR_NORMAL=2
typeset -g VI_MODE_CURSOR_INSERT=6
typeset -g VI_MODE_CURSOR_VISUAL=4

plugins=(git aliases vi-mode)


export ZSH_CUSTOM="$HOME/zsh_custom"

source $ZSH/oh-my-zsh.sh

bindkey -v

export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init - -zsh)"


. "$HOME/.local/bin/env"

. "$HOME/.profile"



