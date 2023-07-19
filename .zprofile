# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
# umask 022

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

# set PATH to flutter binaries if they exists
if [ -d "$HOME/dev/flutter/bin" ] ; then
    PATH="$PATH:$HOME/dev/flutter/bin"
fi

export ANDROID_HOME="$HOME/dev/Android/Sdk"


# Added by Toolbox App
export PATH="$PATH:/home/kma/.local/share/JetBrains/Toolbox/scripts"

