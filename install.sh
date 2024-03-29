DEFAULT_INSTALL_PATH="~"
INSTALL_PATH=${INSTALL_PATH:-$DEFAULT_INSTALL_PATH}

INSTALL_PATH=`realpath $INSTALL_PATH`

# fail on any error
set -e
set -x

echo "Installing vim config to $INSTALL_PATH..."

git clone https://github.com/gmarik/Vundle.vim.git $INSTALL_PATH/.vim/plugin/Vundle.vim
curl -O https://raw.githubusercontent.com/jjalowie/vim-config/main/.vimrc
sed -i "s|INSTALL_PATH|$INSTALL_PATH|g" .vimrc
mv -n .vimrc $INSTALL_PATH

curl -O https://raw.githubusercontent.com/sickill/vim-monokai/master/colors/monokai.vim
mkdir -p $INSTALL_PATH/.vim/colors
mv -n monokai.vim $INSTALL_PATH/.vim/colors/monokai.vim
