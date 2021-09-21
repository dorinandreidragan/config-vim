echo "Removing default vim"
if [ -d "~/.vim-bak" ]; then rm -rf ~/.vim.bak; fi
if [ -f "~/.vimrc" ]; then rm ~/.vimrc.bak; fi

vim_path=~/.vim
vimrc_path=~/.vimrc
viminfo_path=~/.viminfo

mv -f $vim_path $vim_path.bak
mv -f $vimrc_path $vimrc_path.bak
mv -f $viminfo_path $viminfo_path.bak

rm -rf $vim_path
rm -f $vimrc_path
rm -f $viminfo_path

echo "Adding custom .vimrc"
cp .vimrc ~/.vimrc

mkdir $vim_path/undodir -p

echo "Installing the vim-plug pluggin manager for vim"
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo "Copy custom options"
mkdir -p ~/.vim/options
cp options/nerdtree-options.vim ~/.vim/options/
cp options/fzf-options.vim ~/.vim/options/

# options for coc
cp options/coc-options.vim ~/.vim/options/
cp options/coc-extensions.vim ~/.vim/options/

# coc-settings.json
cp options/coc-settings.json ~/.vim/
