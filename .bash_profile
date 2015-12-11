# path
PATH=$PATH:.
export PATH

# prompt
PS1="\u@\h:\w: % "

# alias
source $HOME/dotfiles/.bash_profile.general.alias

# local alias
source $HOME/dotfiles/local/.bash_profile.local.alias

# confirm alias
alias al='cat ~/dotfiles/.bash_profile.general.alias;cat ~/dotfiles/local/.bash_profile.local.alias' 
export PATH=/usr/local/sbin:$PATH

###
# local settings
###
source $HOME/dotfiles/local/.bash_profile.local
source $HOME/dotfiles/local/.bash_profile.local.alias
