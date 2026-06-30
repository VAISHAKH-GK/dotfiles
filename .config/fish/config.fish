if status is-interactive
  if not set -q SSH_AUTH_SOCK
    eval (ssh-agent -c) > /dev/null
  end
  # Commands to run in interactive sessions can go here
  alias mv='mv -i'
  alias rm='rm -i'
  alias ls='eza --group-directories-first --icons'
  alias la="eza -a --group-directories-first --icons"
  alias ll="eza -lh --group-directories-first --icons --group"
  alias lla="eza -lah --group-directories-first --icons --group"
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

set -x PYENV_ROOT $HOME/.pyenv
set -x ANDROID_SDK_ROOT ~/Android/Sdk
set -x ANDROID_HOME $ANDROID_SDK_ROOT
set -x ANDROID_AVD_HOME $HOME/.android/avd
set -x PATH $PATH $ANDROID_SDK_ROOT/cmdline-tools/latest/bin $ANDROID_SDK_ROOT/emulator $ANDROID_SDK_ROOT/platform-tools
set -x JAVA_HOME /usr/lib/jvm/java-25-openjdk
set -x GRADLE_LOCAL_JAVA_HOME /usr/lib/jvm/java-25-openjdk
set -x PATH $PATH /home/vaishakh/.local/bin
set -x PATH $PATH /home/vaishakh/.local/share/nvm/v26.0.0/bin/
set -x PATH $PATH ~/.cargo/bin/
set -x PATH $PATH ~/go/bin/
set -x PATH $PATH ~/.config/emacs/bin/
set -x PATH $PATH ~/scripts/
set -x PATH $PATH $PYENV_ROOT
set -x GOPATH ~/go
set -x GOBIN ~/go/bin
set -x GOPROXY direct
set -x GOSUMDB off
set -x GOTELEMETRY off
set -x EDITOR emacsclient
set -x BROWSER zen-browser
# set -x LD_LIBRARY_PATH /usr/local/lib
eval (ssh-agent -c) > /dev/null
set -x XDG_CONFIG_HOME $HOME/.config
set -gx NVM_DIR $HOME/.nvm
fish_vi_key_bindings 2>/dev/null
