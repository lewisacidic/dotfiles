# WSL x server
set -gx DISPLAY localhost:0.0
set -gx LIBGL_ALWAYS_INDIRECT 1

# gpg interactive mode
set -gx GPG_TTY (tty)

set -gx EDITOR nvim
set -gx BROWSER firefox.exe
set -gx FILEMANAGER explorer.exe

abbr vim nvim
abbr pass gopass
abbr cm chezmoi

alias code code-insiders

fish_vi_key_bindings

set -agx PATH "/mnt/c/Program Files/Mozilla Firefox/" $PATH
set -agx PATH $HOME/bin

set FUCKINGALIAS darn
thefuck --alias $FUCKINGALIAS | source

# keybinds
for mode in (bind -L)
    bind -M $mode \er 'printf "sourced config\n\n\n"; source $HOME/.config/fish/config.fish; commandline -f repaint'
    bind -M $mode \eR '$EDITOR $HOME/.config/fish/config.fish'
    bind -M $mode \ef '$FUCKINGALIAS'
end


conda activate base


