if status is-interactive
    alias ll="exa -l -g --icons"
    # Commands to run in interactive sessions can go here
    starship init fish | source
end

# fnm
set FNM_PATH "/home/michael/.local/share/fnm"
if [ -d "$FNM_PATH" ]
    set PATH "$FNM_PATH" $PATH
    fnm env | source
end

# Avaliar as cores padrão do dircolors
if test -e ~/.dircolors
    eval (dircolors -c ~/.dircolors)
else
    eval (dircolors -c)
end
alias vim="nvim"
alias ta="tmux attach"
alias t="tmux"


