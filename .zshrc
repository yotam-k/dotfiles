## ALIASES

# Run source on .zshrc to update terminal session when settings are changed
alias update='source ~/.zshrc'

# Uses colorls in favor of ls
alias ls='colorls'
alias lf='colorls -Af'
alias ll='colorls -Al'
alias lgs='colorls -A --gs'

# Setup the dotfile repository alias
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

## PLUGINS

# Runs syntax highlighting
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# Adds autosuggetsions
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# Runs zplug
export ZPLUG_HOME=/usr/local/opt/zplug
source $ZPLUG_HOME/init.zsh

zplug 'g-plane/zsh-yarn-autocompletions'
zplug 'vasyharan/zsh-brew-services'

# Set Spaceship ZSH as a prompt
autoload -U promptinit; promptinit
prompt spaceship
