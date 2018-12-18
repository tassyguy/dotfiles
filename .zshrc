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
zstyle :compinstall filename '/Users/sphillips/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e

# End of lines configured by zsh-newuser-install

module_path=($module_path /usr/local/lib/zpython)
eval "$(thefuck --alias)"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
eval "$(rbenv init -)"

# source "/usr/local/opt/chruby/share/chruby/chruby.sh"
# source "/usr/local/opt/chruby/share/chruby/auto.sh"
# source "/usr/local/share/zsh-navigation-tools/zsh-navigation-tools.plugin.zsh"
# source $(dirname $(gem which colorls))/tab_complete.sh

if which jenv > /dev/null; then eval "$(jenv init -)"; fi
if which plenv > /dev/null; then eval "$(plenv init - zsh)"; fi

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

export PATH="/usr/local/opt/sphinx-doc/bin:$PATH" # reinstall using PIP
export PATH="/usr/local/opt/ruby/bin:$PATH"
export PATH="/usr/local/share/python:$PATH"
export PATH="/usr/local/opt/openssl/bin:$PATH"
export PATH="/usr/local/bin:/usr/local/sbin:$PATH"
export PATH="/Users/sphillips/Library/flutter/bin:$PATH"
export PATH="/usr/local/opt/libxml2/bin:$PATH"
export PATH="/usr/local/opt/sqlite/bin:$PATH"
export PATH="/usr/local/opt/openssl/bin:$PATH"
export PATH="/usr/local/opt/libxml2/bin:$PATH"
export PATH="/usr/local/opt/gettext/bin:$PATH"
export PATH="/usr/local/opt/go/libexec/bin:$PATH"
export PATH="$JAVA_HOME/bin:$PATH"
export PATH="/usr/local/opt/apr/bin:$PATH"
export PATH="/usr/local/opt/apr-util/bin:$PATH"
export PATH="/usr/local/opt/libpq/bin:$PATH"
export PATH="/usr/local/opt/dart/bin:$PATH"
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
export PATH="/usr/local/anaconda3/bin:$PATH"
export PATH="/usr/local/opt/curl/bin:$PATH"
export PATH="/usr/local/opt/sphinx-doc/bin:$PATH"
export PATH="/usr/local/opt/gnu-tar/libexec/gnubin:$PATH"
export GOPATH="/usr/local/opt/go/libexec"
export PATH="$HOME/.rbenv/bin:$PATH"
export PATH="$GOPATH/bin:$PATH"
export ANDROID_SDK_ROOT="/usr/local/share/android-sdk"
export LDFLAGS="-L/usr/local/opt/ruby/lib"
export CPPFLAGS="-I/usr/local/opt/ruby/include"
export HOMEBREW_CASK_OPTS="--appdir=~/Applications --fontdir=/Library/Fonts"
export GROOVY_HOME="/usr/local/opt/groovy/libexec"

# export MONO_GAC_PREFIX="/usr/local"
# export PATH="/usr/local/opt/tomcat@8/bin:$PATH"
# export PATH="/usr/local/opt/libpq/bin:$PATH"

# alias start-eclipse='open /Applications/Eclipse\ JEE.app'

###-tns-completion-start-###
if [ -f /Users/sphillips/.tnsrc ]; then
    source /Users/sphillips/.tnsrc
fi
###-tns-completion-end-###

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon user root_indicator ip newline time public_ip dir newline node_version php_version rust_version swift_version rbenv pyenv newline todo)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status vcs zsh_showStatus)

prompt_zsh_showStatus () {
  state=`osascript -e 'tell application "Spotify" to player state as string'`;
  if [ $state = "playing" ]; then
    artist=`osascript -e 'tell application "Spotify" to artist of current track as string'`;
    track=`osascript -e 'tell application "Spotify" to name of current track as string'`;

    echo -n "$artist - $track";
  fi
}

POWERLEVEL9K_RPROMPT_ON_NEWLINE=true
POWERLEVEL9K_NVM_BACKGROUND='28'
POWERLEVEL9K_NVM_FOREGROUND='15'
POWERLEVEL9K_DIR_SHOW_WRITABLE=true
POWERLEVEL9K_RBENV_ALWAYS=true
POWERLEVEL9K_RBENV_PROMPT_ALWAYS_SHOW=true
POWERLEVEL9K_TIME_FORMAT="%D{%H:%M:%S, %d.%m.%y}"

# tabtab source for electron-forge package
# uninstall by removing these lines or running `tabtab uninstall electron-forge`
[[ -f /usr/local/lib/node_modules/electron-forge/node_modules/tabtab/.completions/electron-forge.zsh ]] && . /usr/local/lib/node_modules/electron-forge/node_modules/tabtab/.completions/electron-forge.zsh

eval "$(direnv hook zsh)"
#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/sphillips/.sdkman"
[[ -s "/Users/sphillips/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/sphillips/.sdkman/bin/sdkman-init.sh"