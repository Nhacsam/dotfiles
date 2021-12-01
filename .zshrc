# Path to your oh-my-zsh installation.
export ZSH=/Users/nicolasdjambazian/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="nhacsam"

# Base16 Shell
BASE16_SHELL="$HOME/.vim_runtime/misc/base16-shell"
[ -n "$PS1" ] && [ -s "$BASE16_SHELL/profile_helper.sh" ] &&  eval "$("$BASE16_SHELL/profile_helper.sh")"

base16_monokai
source ~/.vim_runtime/misc/base16-fzf/bash/base16-monokai.config



# base16_tomorrow-night
# source ~/.vim_runtime/base-16/base16-fzf/bash/base16-tomorrow-night.config
# base16_material-darker
# source ~/.vim_runtime/base-16/base16-fzf/bash/base16-material-darker.config
# base16_gruvbox-dark-hard
# source ~/.vim_runtime/base-16/base16-fzf/bash/base16-gruvbox-dark-hard.config


export IS_FONT_INSTALLED="true"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git tmux node npm vagrant symfony2 tmuxinator)

# User configuration
export ANDROID_HOME=/Users/nicolasdjambazian/Library/Android/sdk

export PATH="/Users/nicolasdjambazian/.composer/vendor/bin:/Users/nicolasdjambazian/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:~/bin"
export PATH="$PATH:/Library/Frameworks/Python.framework/Versions/3.6/bin:/Users/nicolasdjambazian/Library/Python/3.6/bin:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{path,exports,aliases,functions,extra}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

# You may need to manually set your language environment
export LANG=fr_FR.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# NVM
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh





# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

export PATH="$PATH:$HOME/.sonar-scanner/bin"

export PATH="$PATH:$HOME/.bin"
export PATH="$PATH:$HOME/Library/Python/3.7/bin"

# added by travis gem
[ -f /Users/nicolasdjambazian/.travis/travis.sh ] && source /Users/nicolasdjambazian/.travis/travis.sh

source ~/.git-subrepo/.rc
. "/Users/nicolasdjambazian/.acme.sh/acme.sh.env"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
