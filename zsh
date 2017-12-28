

#
# User configuration sourced by interactive shells
#

# Path to your oh-my-zsh installation.
export ZSH=/home/will/.oh-my-zsh
export TERM="xterm-256color"

###############
###POWERLINE#####
###############
POWERLEVEL9K_MODE='awesome-fontconfig'
ZSH_THEME="powerlevel9k/powerlevel9k"
POWERLEVEL9K_HIDE_BRANCH_ICON=true
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon background_jobs dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(virtualenv)
POWERLEVEL9K_SHORTEN_DIR_LENGTH=2
POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR=""
POWERLEVEL9K_LEFT_SUBSEGMENT_SEPARATOR=""
POWERLEVEL9K_LEFT_SEGMENT_END_SEPARATOR=" "

shorten_username() {
    if [[ "$USER" == "root" ]]; then; echo "root"; else; echo "will"; fi
}

POWERLEVEL9K_HOME_ICON=""
POWERLEVEL9K_FOLDER_ICON=""
POWERLEVEL9K_HOME_SUB_ICON=""
POWERLEVEL9K_LINUX_ICON=$(shorten_username)
POWERLEVEL9K_OS_ICON_BACKGROUND="237"
POWERLEVEL9K_OS_ICON_FOREGROUND="249"

POWERLEVEL9K_DIR_HOME_BACKGROUND="018"
POWERLEVEL9K_DIR_HOME_FOREGROUND="249"
POWERLEVEL9K_VCS_CLEAN_BACKGROUND="002"
POWERLEVEL9K_VCS_MODIFIED_FOREGROUND="000"
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND="003"
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND="004"
POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND="000"
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND="018"
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND="249"
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND="018"
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND="249"
POWERLEVEL9K_VIRTUALENV_BACKGROUND="203"
POWERLEVEL9K_VIRTUALENV_FOREGROUND="000"

#plugins
plugins=(git zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

export NVM_DIR="/home/will/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

#Manpage highlighting
export LESS_TERMCAP_md=$'\e[32m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[100;37m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[34m'


#aliases
alias sleep='systemctl suspend'
alias clock='tty-clock -c -C 4 -s'
alias colors='sh ~/Scripts/colorscheme.sh'
alias neofetch='neofetch -s --backend w3m --source ~/download.jpg --size 250px --size 250px
'
