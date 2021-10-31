# NeoVim File Configuration 

<center><img src="https://cdn.discordapp.com/attachments/903631988903280672/904352143203504199/2021-10-31_19-51.png"></center>

## Simple, Fast, And Easy

this is the most simple and fast vim configuration, does not require complicated installation and takes a lot of time. Suitable for those who want to use vim but are confused about installing or lazy to install plugins and it doesn't take a long time.

Modular NeoVim configuration inspired by [@Dyzean](https://github.com/Dyzean/dotfiles) nvimrc.

### Requirement
- vim8.2+, or neovim 0.5.0+.

### Warning!
- **read and follow the installation guide on readme.md, otherwise your Neovim will most likely crash**

### Bloat!
- all plugins are mostly dedicated to web developers, if you still want to use them then remove some unnecessary plugins as they will affect your neovim performance

## Installation

the first thing is that you definitely have to install neovim, After installing neovim you need to create a file to configure the neovim plugin

- Install Minimap

![screenshot](https://raw.githubusercontent.com/wfxr/i/master/minimap-vim.gif)

Arch
```
yay -S code-minimap
```

MacOS
```
brew install code-minimap
```
if your operating system is different from the one mentioned above, then install it here

[code-minimap](https://github.com/wfxr/code-minimap/releases/tag/v0.6.1)

- Install Ctags

Debian
```
sudo apt-get install ctags
```

Arch
```
yay -S ctags
```

- Install Nodejs
```
sudo curl -sL install-node.now.sh/lts | bash
```

- Install the Vim-plug Plugin Manager

```
 curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```
- create the subfolder structure to store the configuration file
```
cd ~
mkdir -p .config/nvim
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

After copying everything, don't forget to type **:wq** in your nvim

open the init.vim file again and type

```
:PlugInstall
```
after the installation is complete, then restart your nvim

## Discord RPC Nvim
<img src="https://i.ibb.co/hMSKCND/Screenshot-2021-08-22-11-28-32.png"> <img src="https://i.ibb.co/8r2kc24/Screenshot-2021-08-22-11-38-36.png">

### Installation
- Vim-Plug: ```Plug 'andweeb/presence.nvim'```<br>
- Packer.nvim: ```use 'andweeb/presence.nvim'```

## Configuration
Configuration is not necessary for Rich Presence to work. But for those that want to override the default configs, the following options are available to configure in either Lua or Vimrc.

### Lua
Require the plugin and call ```setup``` with a config table with one or more of the following keys:


```lua
require("presence"):setup({
    -- General options

    auto_update         = true,                       -- Update activity based on autocmd events (if `false`, map or manually execute `:lua package.loaded.presence:update()`)
    main_image          = "file",                     -- Text displayed when hovered over the Neovim image
    neovim_image_text   = "Neovim",                   -- Main image display (either "neovim" or "file")
    client_id           = "793271441293967371",       -- Use your own Discord application client id (not recommended)
    log_level           = nil,                        -- Log messages at or above this level (one of the following: "debug", "info", "warn", "error")
    debounce_timeout    = 10,                         -- Number of seconds to debounce events (or calls to `:lua package.loaded.presence:update(<filename>, true)`)
    enable_line_number  = false,                      -- Displays the current line number instead of the current project
    blacklist           = {},                         -- A list of strings or Lua patterns that disable Rich Presence if the current file name, path, or workspace matches
    buttons             = true,                       -- Configure Rich Presence button(s), either a boolean to enable/disable, a static table (`{{ label = "<label>", url = "<url>" }, ...}`, or a function(buffer: string>

    -- Rich Presence text options
    editing_text        = "Editing %s",               -- Format string rendered when an editable file is loaded in the buffer
    file_explorer_text  = "Browsing %s",              -- Format string rendered when browsing a file explorer
    git_commit_text     = "Committing changes",       -- Format string rendered when commiting changes in git
    plugin_manager_text = "Managing plugins",         -- Format string rendered when managing plugins
    reading_text        = "Reading %s",               -- Format string rendered when a read-only or unmodifiable file is loaded in the buffer
    workspace_text      = "Working on %s",            -- Workspace format string (either string or function(git_project_name: string|nil, buffer: string): string)
    line_number_text    = "Line %s out of %s",        -- Line number format string (for when enable_line_number is set to true)
})
```
### Vimrc
Or if global variables are more your thing, you can use any of the following instead:
```vim
" General options

let g:presence_auto_update         = 1
let g:presence_neovim_image_text   = "The One True Text Editor"
let g:presence_main_image          = "file"
let g:presence_client_id           = "793271441293967371"
let g:presence_log_level           = "debug"
let g:presence_debounce_timeout    = 10
let g:presence_enable_line_number  = 0
let g:presence_blacklist           = []
let g:presence_buttons             = 1

" Rich Presence text options
let g:presence_editing_text        = "Editing %s"
let g:presence_file_explorer_text  = "Browsing %s"
let g:presence_git_commit_text     = "Committing changes"
let g:presence_plugin_manager_text = "Managing plugins"
let g:presence_reading_text        = "Reading %s"
let g:presence_workspace_text      = "Working on %s"
let g:presence_line_number_text    = "Line %s out of %s"

```


