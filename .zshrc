# syetem
setopt no_beep

# completion
autoload -U compinit
compinit
zstyle ':completion:*:default' menu select=1

# directory operation
setopt cdable_vars
setopt auto_cd
setopt auto_pushd

# history
export HISTFILE=${HOME}/.zsh_history
export HISTSIZE=1000
export SAVEHIST=100000
setopt share_history
setopt hist_reduce_blanks
setopt hist_verify
setopt hist_no_store

# history completion
autoload history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey "^p" history-beginning-search-backward-end
bindkey "^n" history-beginning-search-forward-end

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
export LANG=ja_JP.UTF-8
export LESSCHARSET=utf-8

# completion color
export LS_COLORS='di=33:ln=32:so=41:pi=31:ex=31:bd=43:cd=43:su=31:sg=31:tw=31:ow=31'
zstyle ':completion:*' list-colors $LS_COLORS

# ls color
export LSCOLORS=Dxcxxbxbbxxcxcbxbxbxbx
export CLICOLOR=true

# alias
alias ll='ls -l'
alias la='ls -la'
alias h='history'
alias g='grep --color=auto -ERUIn'
alias v='vim'

# personal alias
source $HOME/.zshrc.personal
