DEFAULT_INSTALL_PATH="~"
INSTALL_PATH=${INSTALL_PATH:-DEFAULT_INSTALL_PATH}

INSTALL_PATH=`realpath $INSTALL_PATH`

# fail on any error
set -e

echo "Installing vim config to $INSTALL_PATH..."

git clone https://github.com/gmarik/Vundle.vim.git $INSTALL_PATH/.vim/plugin/Vundle.vim >/dev/null
wget -O .vimrc https://raw.githubusercontent.com/jjalowie/vim-config/main/.vimrc >/dev/null
sed -i "s|INSTALL_PATH|$INSTALL_PATH|g" .vimrc
mv -f .vimrc $INSTALL_PATH

wget https://raw.githubusercontent.com/sickill/vim-monokai/master/colors/monokai.vim >/dev/null
mkdir -p $INSTALL_PATH/.vim/colors
mv -f monokai.vim $INSTALL_PATH/.vim/colors/monokai.vim

if [ -e "~/.screenrc" ]; then
  e=$(grep '^shell ' ~/.screenrc)
  if [ e != "" ]; then
    echo "shell -$SHELL" >> ~/.screenrc
  fi
else
  echo "shell -$SHELL" >> ~/.screenrc
fi >/dev/null
