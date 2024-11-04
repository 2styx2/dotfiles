#~/.zshrc

source ~/.config/zsh/minimal.zsh

alias vim="nvim"
#alias cd="z"

alias ls="ls -C -F --color="always""

#eval "$(zoxide init zsh)"

export PATH=/home/styx/.local/share/bob/nvim-bin:$PATH
export PATH=$HOME/.cargo/bin:$PATH
export PATH=$HOME/.local/bin:$PATH
export PREFIX="$HOME/opt/cross"
export TARGET=i686-elf
export PATH="$PREFIX/bin:$PATH"

# pnpm
export PNPM_HOME="/home/styx/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# fnm
FNM_PATH="/home/styx/.local/share/fnm"
if [ -d "$FNM_PATH" ]; then
  export PATH="/home/styx/.local/share/fnm:$PATH"
  eval "`fnm env`"
fi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion



# xd function to quickly navigate to saved directories
fuction xd() {
  TARGET=$(xtrad "$@")
  if [ $# -eq 1 ]; then
    if [ $1 = "list" ]; then
      echo "$TARGET"
    else
    cd "$TARGET"
    fi
  else 
    echo "$TARGET"
  fi
}

. "$HOME/.asdf/asdf.sh"

# append completions to fpath
fpath=(${ASDF_DIR}/completions $fpath)
# initialise completions with ZSH's compinit
autoload -Uz compinit && compinit
