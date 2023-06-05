alias vi=nvim
alias vim=vi

source ~/.zsh/git-prompt.zsh/git-prompt.zsh
source ~/.zsh/git-prompt.zsh/examples/default.zsh
source ~/.zsh/zsh-vim-mode/zsh-vim-mode.plugin.zsh
source ~/.cargo/env

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export PATH=$PATH:/opt/nvim/bin

# NVM
#export NVM_DIR="$HOME/.nvm"
#[ -s "/usr/local/opt/nvm/nvm.sh" ] && \. "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
#[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/usr/local/opt/nvm/etc/bash_completion.d/nvm"
export PATH="/usr/local/opt/libpq/bin:$PATH"
