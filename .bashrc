if which ruby >/dev/null && which gem >/dev/null; then
  PATH="$(ruby -rubygems -e 'puts Gem.user_dir')/bin:$PATH"
fi

#for bash_completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  source $(brew --prefix)/etc/bash_completion
fi

# git ps1
source /usr/local/etc/bash_completion.d/git-prompt.sh
source /usr/local/etc/bash_completion.d/git-completion.bash
GIT_PS1_SHOWDIRTYSTATE=true
export PS1='\[\033[32m\]\w\[\033[37m\]\[\033[31m\]$(__git_ps1)\[\033[00m\]\$ '

# alias
alias ls="ls -G"
alias ll="ls -lG"
alias la="ls -laG"

# golang
export GOPATH=~/workspace/go
export PATH=$PATH:$GOPATH/bin
