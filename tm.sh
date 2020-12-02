#!/usr/bin/zsh

tmux new-session -d -s nikita 
tmux new-window -n mydotfiles -t nikita: 'cd ~/mydotfiles; git pull && vim .; /usr/bin/zsh '
tmux new-window -n nadmozg -t nikita: 'cd ~/nadmozg.wiki; git pull && vim .; /usr/bin/zsh '
tmux new-window -n calypso -t nikita: 'ssh -p 8022 six@194.95.254.12'
tmux a -t nikita

