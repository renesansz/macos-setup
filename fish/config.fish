#######################
# Universal Variables #
#######################

# General Directories
set -U WORKSPACE "$HOME/Workspace"
set -U CODEGROUNDS "$HOME/CodeGrounds"
set -U INGENUITY "$WORKSPACE/Ingenuity"
set -U FREELANCE_DIR "$WORKSPACE/Freelance"

# Ingenuity Workspace Directories
set -U BRANCH_IO_DIR "$INGENUITY/BranchMetrics"
set -U AVARIO_DIR "$INGENUITY/Avario"
set -U SUB_SYNC_DIR "$INGENUITY/Sub-Sync"
set -U CLOUD_SUITE_DIR "$INGENUITY/Cloudsuite"
set -U ENGAGE_BACKEND_DIR "$INGENUITY/Engage/backend/src"
set -U ENGAGE_FRONTEND_DIR "$INGENUITY/Engage/frontend/src"
set -U ENGAGE_BACKEND_OLD "$INGENUITY/Engage/engage-old/src"
set -U CLOUD_WAVE_DIR "$HOME/Workspace/Freelance/Cloud\ Wave\ Technology"
set -U BRANCH_METRICS_DIR "$INGENUITY/BranchMetrics"
set -U SUB_SYNC_DIR "$INGENUITY/Sub-Sync"
set -U GRIN_DIR "$INGENUITY/Grin"
set -U PROJECT_D_DIR "$INGENUITY/Project-D"
set -U LIIRN_DIR "$INGENUITY/LiiRN"
set -U DYLN_DIR "$INGENUITY/DYLN"

# Freelance Workspace Directory 
set -U PAPERPOST_DIR "/Users/renesansz/Workspace/Freelance/Paperpost/paperpost_api"

###########
# SCRIPTS #
###########

# Set Node Binary Path
# set -gx PATH /usr/local/Cellar/node/5.10.1/lib/node_modules/cordova/bin $PATH
set -gx PATH /usr/local/bin $PATH

# Set Ruby Gem Binary Path
# set -gx PATH ~/.gem/ruby/2.3.0/bin $PATH
set -gx PATH ~/.composer/vendor/bin $PATH

#Display MOTD
fortune -n 20 | cowsay | lolcat

# Remove default Fish shell greeting message
set fish_greeting

# Locale setting fix for Odoo framework
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Others
export CHEATCOLORS=true
export CHANGELOG_GITHUB_TOKEN="543dcdfa566008129f9e3aad29872a3d2addde42"

# Android SDK Path
export ANDROID_HOME=/Users/renesansz/Library/Android/sdk
set -gx PATH /Users/renesansz/Library/Android/sdk/platform-tools $PATH
set -gx PATH /Users/renesansz/Library/Android/sdk/tools $PATH

# Alias Commands
alias disable-spotlight "sudo launchctl unload -w /System/Library/LaunchDaemons/com.apple.metadata.mds.plist"
alias enable-spotlight "sudo launchctl load -w /System/Library/LaunchDaemons/com.apple.metadata.mds.plist"
alias fish-functions "cd ~/.config/fish/functions"
alias postgres-stop "pg_ctl -D /usr/local/var/postgres9.6 stop -s -m fast"
alias postgres-start "pg_ctl -D /usr/local/var/postgres9.6 -l logfile start"
alias brew-cask-upgrade "brew cask list | xargs brew cask install --force"
alias .. 'cd ..'
alias lh 'ls -lhaG'
alias checkconn "ping 8.8.8.8"
alias fish-reload "fish;clear"
alias flushcache="sudo dscacheutil -flushcache;sudo killall -HUP mDNSResponder;say cache flushed"
alias port-forward-enable-8000 "echo 'rdr pass inet proto tcp from any to any port 80 -> 127.0.0.1 port 8000' | sudo pfctl -ef -"
alias port-forward-disable "sudo pfctl -F all -f /etc/pf.conf"
alias port-forward-list "sudo pfctl -s nat"
alias show-files='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hide-files='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'
alias fish-edit='vim ~/.config/fish/config.fish'
alias disable-time-machine-local "sudo tmutil disablelocal"
alias enable-time-machine-local "sudo tmutil enablelocal"

# Git
alias git-assume-unchanged-list "git ls-files -v|grep '^h'"
alias gits "git status"
alias gitb "git branch"
alias git-clean-merged "git branch --merged | grep -v '\*' | grep -v master | xargs -n 1 git branch -d"
alias git-clean-merged-remote "git branch --remote --merged | grep origin | grep -v '>' | grep -v master | grep -v develop | xargs -L1 | cut -d"/" -f2- | xargs git push origin --delete"
alias gitl "git log --oneline --graph --abbrev-commit --decorate --date=relative --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all"

# SSH
alias sshkclear "ssh-add -D"
alias sshklist "ssh-add -l"

# Start Docker
set -gx DOCKER_TLS_VERIFY "1";
set -gx DOCKER_HOST "tcp://192.168.99.100:2376";
set -gx DOCKER_CERT_PATH "/Users/renesansz/.docker/machine/machines/default";
set -gx DOCKER_MACHINE_NAME "default";
#docker-machine start default
#eval (docker-machine env default)

# Path to Oh My Fish install.
#set -gx OMF_PATH /Users/Renesansz/.local/share/omf

# Customize Oh My Fish configuration path.
#set -gx OMF_CONFIG /Users/Renesansz/.config/omf

# Load oh-my-fish configuration.
#source $OMF_PATH/init.fish
set -g fish_user_paths "/usr/local/sbin" $fish_user_paths
set -g fish_prompt_pwd_dir_length 10 

#test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish
