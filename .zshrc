#~/.zshrc

source ~/.config/zsh/minimal.zsh

alias vim="nvim"
#alias cd="z"

alias ls="ls -C -F --color="always""

#eval "$(zoxide init zsh)"


export PATH=$HOME/.cargo/bin:$PATH
export PATH=$HOME/.local/bin:$PATH

. "/home/styx/.deno/env"

# goto function to quickly navigate to saved directories
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
