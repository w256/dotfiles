# .bash_profile          

# global setting                                                                                                                                 
if [ -f /etc/bashrc ]; then
    . /etc/bashrc    
fi                       

# alias                     
source $HOME/dotfiles/general.alias

# personal setting       
source $HOME/.bash_personal    
