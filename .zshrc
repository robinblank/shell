# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
  export ZSH=/home/robin/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="agnoster"

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
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
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  ssh-agent
  zsh-autosuggestions
)
zstyle :omz:plugins:ssh-agent agent-forwarding on

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

### Removing User@Machine
prompt_context() {}


# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias forwardPort='ssh -L 9000:vvs-db1.pironet-ndh.com:5432 rblank@vvs-app06.pironet-ndh.com'
alias fs01q='ssh rblank@10.250.100.16'
alias fs02q='ssh rblank@10.250.100.18'
alias int01q='ssh rblank@10.250.100.23'
alias int02q='ssh rblank@10.250.100.24'
alias postbox='ssh rblank@10.250.100.15'
alias onboarding-vc='ssh rblank@10.250.100.25'
alias onboarding-eh='ssh rblank@10.250.100.30'
alias rundeck='ssh rblank@rundeck.tech.visualvest.de'
# Test
alias test-web01='ssh rblank@195.227.166.165'
alias test-web02='ssh rblank@195.227.166.166'
alias test-db01='ssh rblank@195.227.166.167'
alias test-db02='ssh rblank@195.227.166.168'
alias test-app01='ssh rblank@195.227.166.169'
alias test-app02='ssh rblank@195.227.166.170'
alias test-app03='ssh rblank@195.227.115.103'
alias test-app04='ssh rblank@195.227.115.104'
alias test-app05='ssh rblank@195.227.105.119'
alias test-app06='ssh rblank@195.227.105.120'
alias test-log01='ssh rblank@vvs-test-log01.pironet-ndh.com'
# Prod
alias web01='ssh rblank@195.227.166.105'
alias web02='ssh rblank@195.227.166.106'
alias web03='ssh rblank@vvs-web03.pironet-ndh.com'
alias db01='ssh rblank@195.227.166.107'
alias db02='ssh rblank@195.227.166.108'
alias app01='ssh rblank@195.227.166.103'
alias app02='ssh rblank@195.227.166.104'
alias app03='ssh rblank@195.227.125.167'
alias app04='ssh rblank@195.227.125.168'
alias app08='ssh rblank@195.227.125.169'
alias app09='ssh rblank@195.227.125.170'
alias app05='ssh rblank@195.227.166.55'
alias app06='ssh rblank@195.227.166.56'
alias app10='ssh rblank@195.227.166.57'
alias app11='ssh rblank@195.227.166.58'
alias app07='ssh rblank@vvs-app07.pironet-ndh.com'
alias log02='ssh rblank@195.227.146.59'
alias log01='ssh rblank@vvs-log01.pironet-ndh.com'
alias imap01='ssh rblank@vvs-imap01.pironet-ndh.com'
# Logs
alias wildflylog='cd /var/log/vvs/wildfly/vvs/wildfly'
# Unix
function cd {
    builtin cd "$@" && ls -F
}
alias gdrive='google-drive-ocamlfuse ~/google-drive'
function cypress() {cd ~/Dokumente/Dev/Testing/cypress && node_modules/.bin/cypress open}

function bashrcUpload() { 
  scp ~/.remote/.bashrc rblank@10.250.100.16:~ &&
  scp ~/.remote/.bashrc rblank@10.250.100.18:~ &&
  scp ~/.remote/.bashrc rblank@10.250.100.23:~ &&
  scp ~/.remote/.bashrc rblank@10.250.100.24:~ &&
  scp ~/.remote/.bashrc rblank@10.250.100.15:~ &&
 #onboarding vcloud  scp ~/.remote/.bashrc rblank@10.250.100.25:~ &&
  scp ~/.remote/.bashrc rblank@10.250.100.30:~ &&
  scp ~/.remote/.bashrc rblank@rundeck.tech.visualvest.de:~ &&
 #test-web01 scp ~/.remote/.bashrc rblank@195.227.166.165:~ &&
 #test-web02 scp ~/.remote/.bashrc rblank@195.227.166.166:~ &&
 #test-db01 scp ~/.remote/.bashrc rblank@195.227.166.167:~ &&
 #test-db02 scp ~/.remote/.bashrc rblank@195.227.166.168:~ &&
  scp ~/.remote/.bashrc rblank@195.227.166.169:~ &&
  scp ~/.remote/.bashrc rblank@195.227.166.170:~ &&
  scp ~/.remote/.bashrc rblank@195.227.115.103:~ &&
  scp ~/.remote/.bashrc rblank@195.227.115.104:~ &&
  scp ~/.remote/.bashrc rblank@195.227.105.119:~ &&
  scp ~/.remote/.bashrc rblank@195.227.105.120:~ &&
  scp ~/.remote/.bashrc rblank@vvs-test-log01.pironet-ndh.com:~ &&
  scp ~/.remote/.bashrc rblank@195.227.166.105:~ &&
  scp ~/.remote/.bashrc rblank@195.227.166.106:~ &&
 #db01 scp ~/.remote/.bashrc rblank@195.227.166.107:~ &&
 #db02 scp ~/.remote/.bashrc rblank@195.227.166.108:~ &&
  scp ~/.remote/.bashrc rblank@195.227.166.103:~ &&
  scp ~/.remote/.bashrc rblank@195.227.166.104:~ &&
  scp ~/.remote/.bashrc rblank@195.227.125.167:~ &&
  scp ~/.remote/.bashrc rblank@195.227.125.168:~ &&
  scp ~/.remote/.bashrc rblank@195.227.125.169:~ &&
  scp ~/.remote/.bashrc rblank@195.227.125.170:~ &&
  scp ~/.remote/.bashrc rblank@195.227.166.55:~ &&
  scp ~/.remote/.bashrc rblank@195.227.166.56:~ &&
  scp ~/.remote/.bashrc rblank@195.227.166.57:~ &&
  scp ~/.remote/.bashrc rblank@195.227.166.58:~ &&
  scp ~/.remote/.bashrc rblank@vvs-app07.pironet-ndh.com:~ &&
  scp ~/.remote/.bashrc rblank@195.227.146.59:~ &&
  scp ~/.remote/.bashrc rblank@vvs-log01.pironet-ndh.com:~ &&
  scp ~/.remote/.bashrc rblank@vvs-imap01.pironet-ndh.com:~
}
alias gdrive='google-drive-ocamlfuse ~/google-drive'
