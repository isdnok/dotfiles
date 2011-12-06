PATH=/usr/local/mysql/bin:$PATH
export PATH
DYLD_FALLBACK_LIBRARY_PATH=/opt/local/lib; export DYLD_FALLBACK_LIBRARY_PATH

export SVN_EDITOR='vim'

##
# Your previous /Users/ishidanaoki/.bash_profile file was backed up as /Users/ishidanaoki/.bash_profile.macports-saved_2011-04-08_at_17:13:02
##

# MacPorts Installer addition on 2011-04-08_at_17:13:02: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.


# alias
#alias ssp='script/server webrick -e production'
alias ss='script/server webrick'
alias la="ls -a"
alias lf="ls -F"
alias ll="ls -l"
alias lla="ls -la"
alias lal="ls -la"
alias g="git"
alias :e="vim"

# rvm
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# show pwd
L1='\[\e[$[COLUMNS-$(echo -n " (\w)" | wc -c)]C\e[1;35m(\w)\e[0m\e[$[COLUMNS]D\]'
#export PS1="${L1}[\u@\h]\\$ "
#export PS1="${L1}[\u]\\$ "
export PS1="${L1}\\$ "

