# Path to your oh-my-zsh installation.
# -f backgrounds mvim may be used for git commit messages.
export EDITOR="mvim --remote-silent"
alias e=$EDITOR
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Example aliases
alias zshconfig="$EDITOR ~/.zshrc"
alias ohmyzsh="$EDITOR ~/.oh-my-zsh"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to disable command auto-correction.
# DISABLE_CORRECTION="true"

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
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration
export PATH="/usr/local/bin:$PATH"
export PATH="$PATH:/usr/local/bin:/Users/jason/bin:/usr/bin:/bin:/usr/sbin:/sbin"
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
# export SSH_KEY_PATH="~/.ssh/dsa_id"

source ~/.zsh_profile
source ~/.bashrc.twice

# Aliases
alias editenv="$EDITOR ~/.zsh_profile"
alias upenv="source ~/.zshrc"
alias ipy="python -c 'import IPython; IPython.terminal.ipapp.launch_new_instance()'"
alias tasks="vim ~/.tasks"
alias web="cd ~/twicevm/twice-web-root"

function mkdircd () { mkdir -p "$@" && eval cd "\"\$$#\""; }

# COMPLETION SETTINGS
# add custom completion scripts
fpath=(~/.zsh/completion $fpath)

# compsys initialization
autoload -U compinit
compinit

# show completion menu when number of options is at least 2
zstyle ':completion:*' menu select=2
alias npm-exec='PATH=$(npm bin):$PATH'
source ~/.fzf.zsh

fd() {
  local dir
  dir=$(find ${1:-*} -path '*/\.*' -prune \
                  -o -type d -print 2> /dev/null | fzf +m) &&
  cd "$dir"
}

markedwatch() {
    ruby /Users/jason/Dropbox/support/MarkedBonusPack1.5/Watchers/nvwatch.rb &
}

#bindkey -v

#bindkey '^P' up-history
#bindkey '^N' down-history
#bindkey '^?' backward-delete-char
#bindkey '^h' backward-delete-char
#bindkey '^w' backward-kill-word
#bindkey '^r' history-incremental-search-backward

#function zle-line-init zle-keymap-select {
    #VIM_PROMPT="%{$fg_bold[yellow]%} [% NORMAL]%  %{$reset_color%}"
    #RPS1="${${KEYMAP/vicmd/$VIM_PROMPT}/(main|viins)/} $EPS1"
    #zle reset-prompt
#}
#
#zle -N zle-line-init
#zle -N zle-keymap-select
##export KEYTIMEOUT=1

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
growl() { echo -e $'\e]9;'${1}'\007' ; return ; }

setopt NO_NOMATCH
