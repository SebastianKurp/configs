 ZSH_DISABLE_COMPFIX=true # If you come from bash you might have to change your $PATH.  # export PATH=$HOME/bin:/usr/local/bin:$PATH
# Path to your oh-my-zsh installation.
export AWS_SDK_LOAD_CONFIG=1
export ZSH="/Users/skurpiel/.oh-my-zsh"
# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="agnoster"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  bundler
  dotenv
  osx
  rake
  rbenv
  ruby
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

#TMUX
alias tma='tmux attach -t'
alias tmd='tmux detach -a'
alias tmk='tmux kill-session -t'
alias tml='tmux ls'
alias tmn='tmux new-session -s'
alias tmuxa='tmux  new-session -A'
alias tmuxl='tmux list-sessions'
alias ks='tmux kill-session'

# Git GOOD
alias gc="git checkout"
alias gcl="git clone"
alias gpl="git pull"
alias gp="git push"
alias ga="git add -p"
alias gaa="git add ."
alias gs="git stash"
alias gip="git push --set-upstream origin"
alias gcm="git commit -m"
alias gst="git status"
alias gmm="git merge origin master"
alias gm="git merge"
alias gcmb="gc master"
alias gu="@SebastianKurp/"

# LazyGit 
alias lg="lazygit"

# NaVI
alias home="cd ~"
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ......="cd ../../../../.."
alias z="./z.sh"

#exa 
alias exat="exa --tree"
alias exalh="exa --long --header"

#iterm stuff
alias c="clear"
alias t="touch"

#yarn stuff
alias y="yarn"
alias ys="yarn start"
alias yd="yarn dev"
alias yr="yarn rollback"
alias yrw="yarn re:watch"
alias yrc="yarn re:clean"
alias yys="yarn && yarn start"
alias ya="yarn add"
alias yad="yarn add --dev"
alias ysto="yarn storybook"
alias ybs="yarn build:styles"

#node/npm stuff
alias nv="node -v"
alias ns="npm start"
alias nd="npm dev"
alias nid="npm install --save-dev"
alias nns="npm && npm start"
alias ni="npm install"
alias nrs="npm run storybook"

### Docker 
alias docker-stop-all='docker stop $(docker ps -a -q)'
alias docker-kill-all='docker rm $(docker ps -a -q)'
alias docker-prune='docker system prune -a'
alias docker-nuke='docker-stop-all && docker-kill-all && docker-prune'

# Vim 
alias v="vim"

# Fast Node Manager https://github.com/Schniz/fnm
eval `fnm env`
export NODE_PATH=`which node`

# Code
code () { VSCODE_CWD=”$PWD” open -n -b “com.microsoft.VSCode” — args $* ;}

# pip
alias pip=/usr/local/bin/pip3

# What's my ip
alias wmip="ifconfig en0 | grep inet | grep -v inet6 | cut -d ' ' -f2"

# iOS Sim
alias openSim="open /Applications/Xcode.app/Contents/Developer/Applications/Simulator.app"

#Disk Usage
alias du="duf --hide-network"

#DynamoDB-admin
# alias dynamoAdmin = DYNAMO_ENDPOINT=http://localhost:4000 dynamodb-admin --open

#DynamoDB Serverless install
# alias dynamoi = npm run serverless -- dynamodb install

# Global Shortcut
alias reload-profile="source ~/.zshrc"
alias edit-profile="sudo vim ~/.zshrc"
 
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
 eval "$(pyenv init -)"
fi

# tabtab source for packages
# uninstall by removing these lines
[[ -f ~/.config/tabtab/__tabtab.zsh ]] && . ~/.config/tabtab/__tabtab.zsh || true
export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"

export PATH="$HOME/.poetry/bin:$PATH"

export PIPENV_VENV_IN_PROJECT="1"
