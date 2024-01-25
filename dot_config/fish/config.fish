function starship_transient_prompt_func
  starship module character
end

if status --is-interactive
    # obtain script directory
    set DIR (dirname (status --current-filename))
    source $DIR/zellij_completions.fish
    starship init fish | source
    enable_transience
end