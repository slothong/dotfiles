function move_to_repo() {
  local selected_repository
  selected_repository=$(ghq list -p | peco --query "$LBUFFER")

  if [ -n "$selected_repository" ]; then
    cd "$selected_repository" || return

    #  프롬프트 직전에 실행되는 함수들을 실행한다.
    for hook in "${precmd_functions[@]}"; do
      $hook
    done
    zle reset-prompt
  fi
}
zle -N move_to_repo

