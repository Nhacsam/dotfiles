[ -n "$PS1" ] && source ~/.bash_profile;


# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

# added by travis gem
[ -f /Users/nicolasdjambazian/.travis/travis.sh ] && source /Users/nicolasdjambazian/.travis/travis.sh

export PATH="$PATH:"/Applications/microchip/xc8/v2.20/bin""

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
