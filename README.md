# Dotfiles
Customized dot files for bash, vim, tmux


## Setup

    sudo apt -y install vim tmux xclip

    mkdir ~/code ; cd ~/code
    
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
    
    git clone git@github.com:Styxny/Dotfiles.git

    sudo apt install xclip

    ln -s ~/code/Dotfiles/.vimrc ~/.vimrc

    ln -s ~/code/Dotfiles/.tmux.conf ~/.tmux.conf
    
    ln -s ~/code/Dotfiles/.gitconfig ~/.gitconfig


Install YouCompleteMe

[YCM](https://github.com/ycm-core/YouCompleteMe#linux-64-bit)


Install fzf
Install ripgrep
