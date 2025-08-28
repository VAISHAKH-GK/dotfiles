if status is-interactive
  # Commands to run in interactive sessions can go here
  alias python=python3
  alias pip=pip3
  alias mv='mv -i'
  alias rm='rm -i'
  alias ls='eza --group-directories-first --icons'
  alias la="eza -a --group-directories-first --icons"
  alias ll="eza -lh --group-directories-first --icons"
  alias lla="eza -lah --group-directories-first --icons"
  alias tmux="tmux -u"
  alias nvim-lazy="NVIM_APPNAME=lazyvim nvim"

  alias g="git"
  alias gl="git log --all --graph"
  alias gs="git status"
  alias gp="git push"
  alias gf="git fetch"
  alias newsboat="newsboat -q"
  alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
  alias nsxiv="nsxiv -a"
end

function fish_user_key_bindings
  fish_vi_key_bindings
end

set -x ANDROID_SDK_ROOT /opt/android-sdk
set -x ANDROID_HOME $ANDROID_SDK_ROOT
set -x ANDROID_AVD_HOME $HOME/.android/avd
set -x PATH $PATH $ANDROID_SDK_ROOT/cmdline-tools/latest/bin $ANDROID_SDK_ROOT/emulator $ANDROID_SDK_ROOT/platform-tools
set -x JAVA_HOME /usr/lib/jvm/java-21-openjdk
set -x GRADLE_LOCAL_JAVA_HOME /usr/lib/jvm/java-21-openjdk

set -x PATH $PATH /home/vaishakh/.local/bin
set -x PATH $PATH ~/.cargo/bin/
set -x PATH $PATH ~/programming/go/bin/
set -x PATH $PATH ~/.config/emacs/bin/
set -x PATH $PATH ~/scripts/

set -x GOPATH ~/programming/go
set -x GOBIN ~/programming/go/bin

set -x GOPROXY direct
set -x GOSUMDB off
set -x GOTELEMETRY off

set -x EDITOR emacsclient
set -x BROWSER zen-browser

set MOZ_ENABLE_WAYLAND 1
set -x LD_LIBRARY_PATH /usr/local/lib

set -x XDG_CONFIG_HOME $HOME/.config
eval (ssh-agent -c) > /dev/null

set -gx NVM_DIR $HOME/.nvm
