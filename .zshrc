#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...
zstyle ':completion:*' completer _expand _complete _ignored _correct _approximate
zstyle :compinstall filename '/Users/simonxphillips/.zshrc'

# Load Neofetch

# neofetch

# print quote

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e

# End of lines configured by zsh-newuser-install

source "/usr/local/share/zsh-navigation-tools/zsh-navigation-tools.plugin.zsh"

if which jenv > /dev/null; then eval "$(jenv init -)"; fi
if which plenv > /dev/null; then eval "$(plenv init - zsh)"; fi

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# Source .profile file (will clean up)
source ~/.profile

# Source Powerlevel9K configuration
source ~/.powerlevel9k

eval "$(pyenv init -)"
eval "$(rbenv init -)"
eval "$(thefuck --alias)"