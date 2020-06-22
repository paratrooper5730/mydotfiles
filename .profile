# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi



SESSIONNAME="lopata"
tmux new-session -A -s $SESSIONNAME
#tmux rename-window OpenVPN@Six
tmux send-keys -t $SESSIONNAME "sudo openvpn ~/Downloads/client.ovpn" C-m 
#tmux new-window
#tmux send-keys -t $SESSIONNAME "ssh root@tortuga.niksem.me" C-m 
## ssh to calypso
#tmux new-window
#tmux send-keys -t $SESSIONNAME "ssh -p 8022 six@194.95.254.12" C-m 
## ssh to six demo
#tmux new-window
#tmux send-keys -t $SESSIONNAME "ssh six@94.186.150.217" C-m 
