alias dev="cd ~/code && clear"

# notes
alias draft="nvim ~/Documents/dev/draf.txt"
alias mark='~/marktext-x86_64.AppImage'
alias wiki="vim -c VimwikiIndex"
alias wikidir="cd ~/Documents/knight-wiki"

function synwiki {
    git add .;
    git commit -m 'Add Notes';
    git push;
}


function dual() {
  if [[ $1 == "off" ]]; then
    xrandr --output HDMI-2 --off
    xrandr --output eDP-1 --auto
  elif [[ $1 == "on" ]]; then
    xrandr --output HDMI-2 --auto
  else
    xrandr --output HDMI-2 --auto
    xrandr --output eDP-1 --auto --$1-of HDMI-2
  fi
}

# Shell
alias cl="clear"
alias rel="source ~/.zshrc && clear"
alias lz="exa -abghHliS"
alias tree="exa -abghHliS --long --tree"
function mkd { mkdir $1 && cd $1;}

# Docker
function dca () {
  CURRIMGS="$(docker images -aq)"
  CURRCONTS="$(docker ps -a -q)"

  if [[ $CURRCONTS ]]; then
    docker rm -f $CURRCONTS
  else
    echo "No Running Containers"
  fi

  if [[ $CURRIMGS ]]; then
    docker rmi -f $CURRIMGS
  else
    echo "No Images"
  fi
}

function dexec () {
  docker exec -it $(docker ps -l | awk 'NR==2, NR==2 {print $1}') bash
}


ZSH_THEME="fino"

plugins=(
    git
    zsh-autosuggestions
    zsh-vi-mode
)
export ZSH="$HOME/.oh-my-zsh"

source $ZSH/oh-my-zsh.sh


ZVM_VI_INSERT_ESCAPE_BINDKEY=jk

function zvm_after_init() {
  bindkey -r '^F'
  bindkey -s ^f "tmux-sessionizer\n"
}

alias lg='lazygit'

