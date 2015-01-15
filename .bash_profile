# path
PATH=$PATH:.
export PATH

# alias↲
source $HOME/dotfiles/.bash.general.alias

###
# $HOME/dotfiles/local/.bash.local.alias↲
###
source $HOME/dotfiles/local/.bash.local.alias

# confirm alias
alias al='cat ~/dotfiles/.bash.general.alias;cat ~/dotfiles/local/.bash.local.alias' 
