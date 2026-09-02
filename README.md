# Dotfiles
Customized dot files for bash, vim, tmux

```
    sudo apt -y install vim tmux xclip ripgrep fzf

    mkdir ~/code ; cd ~/code

    git clone git@github.com:Styxny/Dotfiles.git

    ln -s ~/code/Dotfiles/.tmux.conf ~/.tmux.conf
    
    ln -s ~/code/Dotfiles/.gitconfig ~/.gitconfig

    ln -s ~/code/Dotfiles/nvim ~/.config/nvim
```

## NVIM Setup
- Download and install Nvim > 0.11 
    
```
    go to neovim.io and download latest binaries .tar folder
    tar xzvf <nvim_tar_file>
    mkdir -p ~/.local
    mv <nvim_folder> ~/.local/

    mkdir -p ~/.local/bin
    ln -s ~/.local/<nvim_fodler>/bin/nvim ~/.local/bin/nvim

    echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.bashrc
    source ~/.bashrc
```
- Download and install tree-sitter-cli

```
    go to https://github.com/tree-sitter/tree-sitter/releases

    download and put in ~/.local/bin
    chmod +x tree-sitter
```

- download a nerd font https://www.nerdfonts.com/font-downloads

```
    mkdir -p ~/.local/share/fonts
    cd ~/.local/share/fonts
    (unpack font)
    fc-cache -fv
```
 




