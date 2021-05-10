export ZSH="/home/r/.oh-my-zsh"
ZSH_THEME="spaceship"
COMPLETION_WAITING_DOTS="true"
plugins=(
  git zsh-syntax-highlighting zsh-autosuggestions z
)
source $ZSH/oh-my-zsh.sh
export SSH_KEY_PATH="~/.ssh/rsa_id"
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
