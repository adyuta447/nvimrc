# NeoVim File Configuration 

<center><img src="https://i.ibb.co/WpTHLYx/Screenshot-2021-08-20-02-45-55-1600x900.png"></center>

## Simple and Fast

this is the most simple and fast vim configuration, does not require complicated installation and takes a lot of time. Suitable for those who want to use vim but are confused about installing or lazy to install plugins and it doesn't take a long time

## Installation

the first thing is that you definitely have to install neovim, After installing neovim you need to create a file to configure the neovim plugin
- Install Nodejs
```
sudo curl -sL install-node.now.sh/lts | bash
```

- Install the Vim-plug Plugin Manager

```
 curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

- (Optional) Import Existing vim Configuration

```
ln -s ~/.vimrc ~/.config/nvim/init.vim
```

Or create a separate one beginning with the current contents of ~/.vimrc<br>

```
cp ~/.vimrc ~/.config/nvim/init.vim
```
or you can directly check the file in the ~/.config/nvim directory and then check whether there is a file called init.vim or not. Then copy everything in init.vim file on my github and paste it in your init.vim file which is in ~/.config/nvim. Remember and don't copy or take everything there, just init.vim

After copying everything, don't forget to type **wq** in your nvim

open the init.vim file again and type

```
PlugInstall
```
after the installation is complete, then restart your nvim



