set fish_greeting ""

set -gx TERM xterm-256color

set -g fish_prompt_pwd_dir_length 1

set -x JAVA_HOME /usr/lib/jvm/temurin-21-jdk-amd64

set -x M2_HOME /opt/apache-maven-3.9.6

# aliases
alias sudo "sudo "
alias mv "mv -v"
alias rm "rm -v"
alias cp "cp -v"
alias v "lvim"
alias rimraf "rimraf -v"
alias rraf "rimraf"
alias rgrep "rgrep --color=always"

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
set -gx CHROME_BIN /snap/bin/chromium
set -gx GH_BROWSER wslview

# NVM
set -gx nvm_default_version 22.11.0
set --query nvm_default_version &&
nvm use $nvm_default_version >/dev/null

# Oh my Posh!
oh-my-posh init fish --config ~/.mintimb.omp.json | source
