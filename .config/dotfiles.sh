# !/bin/bash
# https://www.atlassian.com/git/tutorials/dotfiles
#

git clone --bare --recurse-submodules https://github.com/SemtexError/dotfiles.git $HOME/.dotfiles
function config {
   /usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME $@
}

config checkout
if [ $? = 0 ]; then
  echo "Checked out config.";
  else
    echo "Backing up pre-existing dot files.";
    config checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | xargs -I{} rm {}
fi;
config checkout
config config status.showUntrackedFiles no
