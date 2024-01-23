if status --is-interactive
    # obtain script directory
    set DIR (dirname (status --current-filename))
    source $DIR/zellij_completions.fish
    starship init fish | source
end