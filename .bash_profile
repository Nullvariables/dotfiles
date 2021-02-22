# ~/.bash_profile
###################################
##      -- .bash_profile --      ##
###################################
#Autostart X at login
#if systemctl -q is-active graphical.target && [[ ! $DISPLAY && $XDG_VTNR -eq 2 ]]; then
#  exec startx
#fi
[[ -f ~/.bashrc ]] && . ~/.bashrc
