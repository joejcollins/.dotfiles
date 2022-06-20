function clock {
  while :
  do
  date && sleep 1 && clear
  done
}

function docker-remove-containers {
  docker rm $(docker ps -a | sed 1d | awk '{ print $1 }')
}

function docker-remove-images {
  docker rmi $(docker images | sed 1d | awk '{ print $3 }')
}

function git-reset {
  git reset --hard
}

function load-ssh-completions {
  h=()
  if [[ -r ~/.ssh/config ]]; then
  h=($h ${${${(@M)${(f)"$(cat ~/.ssh/config)"}:#Host *}#Host }:#*[*?]*})
  fi

  if [[ $#h -gt 0 ]]; then
  zstyle ':completion:*:ssh:*' hosts $h
  zstyle ':completion:*:slogin:*' hosts $h
  fi
}
