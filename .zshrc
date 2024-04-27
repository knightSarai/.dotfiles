alias lg="lazygit"
alias wiki="vim -c VimwikiIndex"
alias wikidir="cd ~/Documents/knight-wiki"

function syncwiki {
  git add .;
  git commit -m 'Add Notes';
  git push;
}

function dual() {
  if [[ $1 == "off" ]]; then
    xrander --output HDMI-2 --off
    xrander --output eDP-1 --auto
  elif [[ $1 == "on" ]]; then
    xrander --output HDMI-2 --auto
  else
    xrander --output HDMI-2 --auto
    xrander --output eDP-1 --auto --$1-of HDMI-2
}

alias cl="clear"
alias rel="source ~/.zshrc && clear"

function dca () {
  CURRIMGS="$(docker images -aq)"
  CURRCONTS="$(docker -ps -a -q)"

  if [[ $CURRCONTS ]]; then
    docker rm -f $CURRCONTS
  else 
    echo "No running container"
  fi

  if [[ CURRIMGS ]]; then
    docker rmi -f $CURRIMGS
  else 
    echo "No images"
  fi
}

function dexec () {
  docker exec -it $(docker ps -l | awk 'NR==2, NR==2 {print $1}') bash
}

ZSH_THEME="fino"
ZVM_VI_INSERT_ESCAPE_BINDKEY=jk


plugins = (
  git
)
