set -x PATH '/usr/local/bin' $PATH
set -x PATH '~/.pyenv/shims' $PATH
. (pyenv init - | psub)

set DISPLAY ':0'
set -U FZF_LEGACY_KEYBINDINGS 0

# fzf keybindings
bind \cl __fzf_cd
bind \co __fzf_cd_with_hidden

alias tmux 'tmux -2u'
alias ls 'ls -FG'
alias ll 'ls -lFG'
alias la 'ls -lahFG'
alias .. 'cd ..'
alias ... 'cd ../..'
alias .... 'cd ../../..'
alias ..... 'cd ../../../..'
alias rm 'rmtrash'
alias pd 'prevd'
alias nd 'nextd'

set -x RyukokuProxy 'http://cache.st.ryukoku.ac.jp:8080/'
function setproxy
  set -x http_proxy $RyukokuProxy
  set -x https_proxy $RyukokuProxy
  set -x all_proxy $RyukokuProxy
end
function unsetproxy
	 set -e http_proxy
	 set -e https_proxy
 	 set -e all_proxy
end

# slab
function mnemosyne
  ssh -i ~/.ssh/id_rsa 133.83.80.110
end
function lethe
  ssh -i ~/.ssh/id_rsa 133.83.80.111
end
function raphael
  ssh -i ~/.ssh/id_rsa 133.83.80.11
end
alias slab raphael
alias www-slab rphael
function terpsichore
  ssh -i ~/.ssh/id_rsa 133.83.80.40
end
alias pro terpsichore

# math
function orca
  ssh -i ~/.ssh/id_rsa 133.83.80.5
end
function whale
  ssh -i ~/.ssh/id_rsa 133.83.80.1
end
alias www whale

# yuica.org
function yuica
  ssh -i ~/.ssh/id_rsa yuica.org -p 2222
end
function yuica_tl
  sshuttle -r yuica.org:2222 10.0.1.0/24
end
function yuica_tl-all
  sshuttle -r yuica.org:2222 0/0
end
  
# RINS
function rins
  ssh -i ~/.ssh/id_rsa rins.st.ryukoku.ac.jp
end
function rins_tl
  sshuttle -r sano@rins.st.ryukoku.ac.jp 133.83.0.0/16
end
function rins_tl_all
  sshuttle -r sano@rins.st.ryukoku.ac.jp 0/0
end
function roes
  ssh -l a00007 -X -i ~/.ssh/id_rsa 10.10.112.160
end
function roes-vnc
  vncviewer 10.10.112.160
end
# pass vnc443
