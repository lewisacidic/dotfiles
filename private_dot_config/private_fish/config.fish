# WSL x server
set -gx DISPLAY localhost:0.0
set -gx LIBGL_ALWAYS_INDIRECT 1

# gpg interactive mode
set -gx GPG_TTY (tty)

set EDITOR nvim
set BROWSER chrome.exe
set FILEMANAGER explorer.exe

abbr vim nvim
abbr pass gopass
abbr cm chezmoi

alias code code-insiders

fish_vi_key_bindings

set -gx PATH "/mnt/c/Program Files (x86)/Google/Chrome/Application" $PATH
set -agx PATH $HOME/bin

for mode in (bind -L)
    bind -M $mode \er 'printf "sourced config\n\n\n"; source $HOME/.config/fish/config.fish; commandline -f repaint'
    bind -M $mode \eR '$EDITOR $HOME/.config/fish/config.fish'
end

