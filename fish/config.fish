starship init fish | source
zoxide init fish | source

#########
# Alias #
#########

# Base
alias hm="home-manager"
alias hxf="hx ~/.config/fish/config.fish"
alias hxc="hx ~/.config/"
alias config-update="cd ~/.config/ && git pull && hm switch && cd -"
# Rust cli
alias cd-old="builtin cd"
alias cd="z"

alias ls-old="command ls"
alias ls="eza --icons -H --group-directories-first"
alias lla="ll -a"

alias cat-old="command cat"
alias cat="bat"


#########
# Color #
#########

# Fish syntax highlighting
set -g fish_color_autosuggestion '555'  'brblack'
set -g fish_color_cancel -r
set -g fish_color_command --bold
set -g fish_color_comment red
set -g fish_color_cwd green
set -g fish_color_cwd_root red
set -g fish_color_end brmagenta
set -g fish_color_error brred
set -g fish_color_escape 'bryellow'  '--bold'
set -g fish_color_history_current --bold
set -g fish_color_host normal
set -g fish_color_match --background=brblue
set -g fish_color_normal normal
set -g fish_color_operator bryellow
set -g fish_color_param cyan
set -g fish_color_quote yellow
set -g fish_color_redirection brblue
set -g fish_color_search_match 'bryellow'  '--background=brblack'
set -g fish_color_selection 'white'  '--bold'  '--background=brblack'
set -g fish_color_user brgreen
set -g fish_color_valid_path --underline
