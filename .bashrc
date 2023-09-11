#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
export JAVA_HOME='/usr/lib/jvm/java-8-openjdk'
export ANDROID_SDK_ROOT='/opt/android-sdk'
export JAVA_OPTS='-XX:+IgnoreUnrecognizedVMOptions '
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/platform-tools/
export PATH=$PATH:$ANDROID_HOME/tools/bin/
export PATH=$PATH:$ANDROID_HOME/tools/
PATH=$ANDROID_HOME/emulator:$PATH
export LD_LIBRARY_PATH=/usr/lib
cat "/home/vaishakh/.cache/wal/sequences"
