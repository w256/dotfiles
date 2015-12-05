# path
PATH=$PATH:.
export PATH

# prompt
PS1="\u@\h:\w: % "

# alias↲
source $HOME/dotfiles/.bash.general.alias

# local alias↲
source $HOME/dotfiles/local/.bash.local.alias

# confirm alias
alias al='cat ~/dotfiles/.bash.general.alias;cat ~/dotfiles/local/.bash.local.alias' 
export PATH=/usr/local/sbin:$PATH
