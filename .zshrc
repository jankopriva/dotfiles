set -o emacs
# path
PATH=~/bin:/bin:/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/opt/local/bin
PATH=$PATH:/usr/local/git/bin:/Developer/usr/bin
export PATH

# man path
MANPATH=$MANPATH:/Users/jk/.node_libraries/man:/usr/man

# variables
export EDITOR=vi
export PAGER=less
export TERM=xterm
export LANG=C
export HOST=midgard
export NODE_PATH=/usr/local/lib/node
export JSTESTDRIVER_HOME=~/bin

# aliases
alias -r ll="ls -al"  
alias -r rspec="bundle exec rspec"
alias -r mysql="/usr/local/mysql/bin/mysql"
alias -r ssh-jklab2="ssh -A jan.kopriva@jk-lab2.getgooddata.com"
alias -r ssh-jkbugfix="ssh -A jan.kopriva@jk-bugfix.getgooddata.com"
alias -r vi_apache_config="vi /private/etc/apache2/other/gdc.conf"
alias -r git_push="git push origin HEAD"
alias -r git_pull="git pull --rebase"

# completions
local _myhosts
_myhosts=( ${${${${(f)"$(<$HOME/.ssh/known_hosts)"}:#[0-9]*}%%\ *}%%,*} )
zstyle ':completion:*' hosts $_myhosts

# autoloads
autoload zmv
autoload -U colors
colors
autoload -U compinit
compinit

# colors
C1="%{$fg_no_bold[grey]%}"  
C2="%{$fg_no_bold[red]%}"   
C3="%{$fg_no_bold[green]%}" 
C4="%{$fg_no_bold[yellow]%}" 
C5="%{$fg_bold[blue]%}"  
C6="%{$fg_no_bold[magenta]%}" 
C7="%{$fg_no_bold[cyan]%}" 
C8="%{$fg_no_bold[white]%}" 
C9="%{$fg_no_bold[default]%}" 
# command promtpt
P1="$C3%~$C9"
P2="$C9%n@$C5%m$C9"
PS1="$P1
$P2 %# "

SSH_ENV="$HOME/.ssh/environment"

clone_bear() {
	git clone -v git@git.gooddata.com:bear.git $1
}


[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"