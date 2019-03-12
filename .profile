export JAVA_HOME=$(/usr/libexec/java_home)
export NPM_PACKAGES="/usr/local/npm_packages"
export NODE_PATH="$NPM_PACKAGES/lib/node_modules:$NODE_PATH"
export PYENV_ROOT="$HOME/.pyenv"
export ANDROID_NDK_HOME="/usr/local/share/android-ndk"

export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  #
[ -s "/usr/local/opt/nvm/etc/bash_completion" ] && . "/usr/local/opt/nvm/etc/bash_completion"
export SDKMAN_DIR="/Users/simonxphillips/.sdkman"
[[ -s "/Users/simonxphillips/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/simonxphillips/.sdkman/bin/sdkman-init.sh"
if [ -f $HOME/.tnsrc ]; then
    source $HOME/.tnsrc
fi


export PATH="/usr/local/opt/openssl/bin:$HOME/.fastlane/bin:/usr/local/opt/libxml2/bin:$HOME/SDKs/flutter/bin:/usr/local/opt/sqlite/bin:/usr/local/opt/libxml2/bin:/usr/local/opt/gettext/bin:/usr/local/opt/apr/bin:/usr/local/opt/apr-util/bin:/usr/local/opt/libpq/bin:/usr/local/opt/dart/bin:/opt/local/bin:/opt/local/sbin:/usr/local/opt/go/libexec/bin:/usr/local/opt/curl/bin:/usr/local/opt/sphinx-doc/bin:/usr/local/opt/tomcat@8/bin:/usr/local/bin/php:/usr/bin/python3:$HOME/.rbenv/bin:/usr/local/bin:/usr/local/sbin:$HOME/.cargo/bin:$NPM_PACKAGES/bin:/opt/yarn-[version]/bin:`yarn global bin`:$ANDROID_NDK_HOME:$JAVA_HOME:$NODE_PATH:$NVM_DIR:$SDKMAN_DIR:$PYENV_ROOT/bin:$PATH"

[[ -s "$HOME/.avn/bin/avn.sh" ]] && source "$HOME/.avn/bin/avn.sh" # load avn

# openblas symlink substitute
export LDFLAGS="-L/usr/local/opt/openblas/lib -L/usr/local/opt/openssl/lib -L$(brew --prefix openssl)/lib -L/usr/local/opt/ruby/lib"
export CPPFLAGS="-I/usr/local/opt/openblas/include -I/usr/local/opt/openssl/include -I/usr/local/opt/ruby/include"
export PKG_CONFIG_PATH="/usr/local/opt/openblas/lib/pkgconfig /usr/local/opt/openssl/lib/pkgconfig /usr/local/opt/ruby/lib/pkgconfig"
export CFLAGS="-I$(brew --prefix openssl)/include -I$(xcrun --show-sdk-path)/usr/include"

alias lc='colorls -lA --sd --gs --tree=[2] --dark'