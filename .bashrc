# ~/.bashrc
#############################################
#               -- .BASHRC --               #
#############################################

#! -- pywal --!
# Import colorscheme from 'wal' asynchronously
# &   # Run the process in the background.
# ( ) # Hide shell job control messages.
#(cat ~/.cache/wal/sequences &)
# Alternative (blocks terminal for 0-3ms)
#cat ~/.cache/wal/sequences
# To add support for TTYs this line can be optionally added.
#source ~/.cache/wal/colors-tty.sh
# If not running interactively, don't do anything
# Source /etc/profile
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

#Use Starship Prompt
eval "$(starship init bash)"

#############################################
#              -- .BASHALIAS --             #
#############################################
# system
#alias systemcheck="yay -Syu ; neofetch"
alias systemcheck=
alias systemupdate="sudo pacman -Syu"
alias editcron= "EDITOR=vim crontab -e"

# systemctl
alias sleep="sudo systemctl suspend"
alias hibernate="sudo systemctl hibernate"
alias reboot="sudo systemctl reboot"
alias restart="sudo pkill -15 Xorg"

# Bash
alias please='sudo $(history -p !!)'

# Pacman
alias pacu="sudo pacman -Syu"
alias paci="sudo pacman -Sy"
alias pacr="sudo pacman -Rs "
alias pacd="pacman -Syuw"
# Yay
alias yayu="yay -Syu" 
alias yayi="yay -Sy"

# timeshift
alias timeup="sudo timeshift --create"
alias timedown="sudo timeshift --restore"

# theme
#alias dark="" [change themem to dark theme]
#alias light="" [change theme to light theme]
#alias theme="" [change theme to suit wallpaper]

alias editvim="EDITOR=vim"
alias editvs="EDITOR=vscodium"

#alias beep_on="export BEEPING=1"
#alias beep_off="export BEEPING=0"