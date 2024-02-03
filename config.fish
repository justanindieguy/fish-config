set fish_greeting ""

set -gx TERM xterm-256color

set -g fish_prompt_pwd_dir_length 1

# aliases
alias sudo "sudo "
alias mv "mv -v"
alias rm "rm -v"
alias cp "cp -v"
alias v "lvim"

function echo_PATH
  for dir in $PATH
    echo $dir
  end
end

if type -q exa
  alias l "exa -lga --icons --group-directories-first"
  alias ll "exa -lg --icons --group-directories-first"
end

set -gx EDITOR nvim
set -gx BROWSER wslview
set -gx GH_BROWSER wslview

# NVM
set -gx nvm_default_version 20.10.0
set --query nvm_default_version &&
nvm use $nvm_default_version >/dev/null

# Oh my Posh!
oh-my-posh init fish --config ~/.mintimb.omp.json | source
