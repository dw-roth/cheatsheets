#!/bin/bash

echo -e "\e[92mDownloading .bash_aliases\e[0m"
curl https://raw.githubusercontent.com/dw-roth/dotfiles/master/.bash_aliases -o .bash_aliases
source .bash_aliases

echo -e "\e[92mInstalling git...\e[0m"
sudo apt install git

echo -e "\e[92m>Installing vim...\e[0m"
sudo apt install vim-gtk

echo -e "\e[92m>Create dirs ~/.vim/{autoload,bundle} and download pathogen.vim...\e[0m"
mkdir -p ~/.vim/{autoload,bundle} && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

echo -e "\e[92m>Download .vimrc form https://raw.githubusercontent.com/dw-roth/dotvim/master/.vimrc...\e[0m"
curl https://raw.githubusercontent.com/dw-roth/dotvim/master/.vimrc -o ~/.vim/.vimrc

echo -e "\e[92m>Creating symlink to .vimrc...\e[0m"
sudo ln -s ~/.vim/.vimrc ~/.vimrc

cd ~/.vim/bundle

echo -e "\e[92m>install EditorConfig-vim...\e[0m"
git clone https://github.com/editorconfig/editorconfig-vim.git

echo -e "\e[92m>install vim-repeat...\e[0m"
git clone https://github.com/tpope/vim-repeat.git

echo -e "\e[92m>install vim-surround...\e[0m"
git clone https://github.com/tpope/vim-surround.git

echo -e "\e[92m>install vim-commentary...\e[0m"
git clone https://github.com/tpope/vim-commentary.git

echo -e "\e[92m>install vim-emmett...\e[0m"
git clone https://github.com/mattn/emmet-vim.git 

echo -e "\e[92m>install vim-JavaScript...\e[0m"
git clone https://github.com/pangloss/vim-javascript.git

echo -e "\e[92m>install vim-typescript...\e[0m"
git clone https://github.com/leafgarland/typescript-vim.git

echo -e "\e[92m>install haskell-vim...\e[0m"
git clone https://github.com/neovimhaskell/haskell-vim.git

echo -e "\e[92m>Install Haskell Platform...\e[0m"
echo -e "\e[92m>If you see error, upgrade Ubuntu...\e[0m"
echo "sudo apt update"
echo "sudo apt upgrade"

sudo apt install haskell-platform

echo -e "\e[92m>Install node...\e[0m"
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash
. ~/.nvm/nvm.sh
nvm install node


