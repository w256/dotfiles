# syetem
setopt no_beep

# completion
autoload -U compinit
compinit
setopt auto_list
setopt complete_in_word
zstyle ':completion:*:default' menu select=1
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
export LS_COLORS='di=33:ln=32:so=41:pi=31:ex=31:bd=43:cd=43:su=31:sg=31:tw=31:ow=31'
zstyle ':completion:*' list-colors $LS_COLORS
setopt auto_param_keys

# bind key
bindkey "^R" history-incremental-search-backward
bindkey "^S" history-incremental-search-forward

# directory operation
setopt cdable_vars
setopt auto_cd
DIRSTACKSIZE=10
setopt auto_pushd
bindkey -v

# path
PATH=$PATH:.
export PATH

# history
export HISTFILE=${HOME}/.zsh_history
export HISTSIZE=1000
export SAVEHIST=100000
setopt share_history
setopt hist_reduce_blanks
setopt hist_verify

# history completion
autoload history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey "^p" history-beginning-search-backward-end
bindkey "^n" history-beginning-search-forward-end

# directory stack
setopt pushd_ignore_dups

# R prompt
autoload -Uz vcs_info
setopt prompt_subst
zstyle ':vcs_info:git:*' check-for-changes true
zstyle ':vcs_info:git:*' stagedstr "%F{yellow}!"
zstyle ':vcs_info:git:*' unstagedstr "%F{red}+"
zstyle ':vcs_info:*' formats "%F{green}%c%u[%b]%f"
zstyle ':vcs_info:*' actionformats '[%b|%a]'
precmd() { vcs_info }
RPROMPT='${vcs_info_msg_0_}'

# L prompt
autoload colors
colors
PROMPT="${fg[white]}%n@%m:%d${reset_color}
%(?.%{${fg[white]}%}.%{${fg[red]}%})%#%{${reset_color}%} "

# japanese
setopt combining_chars
export LANG=ja_JP.UTF-8
export LESSCHARSET=utf-8

# ls color
export LSCOLORS=Dxcxxbxbbxxcxcbxbxbxbx
export CLICOLOR=true

# alias                
source $HOME/dotfiles/.zshrc.general.alias

# function
source $HOME/dotfiles/.zshrc.general.function

# env
source $HOME/dotfiles/local/.zshrc.local.env

###
# local settings
###
source $HOME/dotfiles/local/.zshrc.local.alias
source $HOME/dotfiles/local/.zshrc.local.function

# confirm alias & function
alias al='cat ~/dotfiles/.zshrc.general.alias;cat ~/dotfiles/local/.zshrc.local.alias'
alias fn='cat ~/dotfiles/.zshrc.general.function;cat ~/dotfiles/local/.zshrc.local.function'

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
