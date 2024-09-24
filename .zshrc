#~/.zshrc

source ~/.config/zsh/minimal.zsh

alias hx="~/.cargo/bin/hx -c ~/.config/helix/config.toml"
alias cd="z"

alias ls="ls -C -F --color="always""

eval "$(zoxide init zsh)"

export HELIX_RUNTIME=~/helix/runtime
