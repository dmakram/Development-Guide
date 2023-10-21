# How to configure Vim / Neovim

The Configuration file associated with with this document can work with any operating system. I believe that that over time I have been practicing vim I learned so much.
Here is the best configuration, I could come up with.

## Installables Needed

- [Vim](https://www.vim.org/download.php) / [Neovim](https://neovim.io/)
- [Vim Plug](https://github.com/junegunn/vim-plug)
- run :PlugInstall in Vim/Neovim

## Features

- Quick to Start
- Moderately Easy to setup over all
- Language support using Command of Completion(coc)
- Tabnine - Artificial Intelligence Support

## Installation

First of course you need to install vim or neovim, I prefer the linux way of doing things.

```
sudo apt install vim neovim git curl
```

or

```
sudo apt install vim git curl
```

Next you need to install a plugin Manager, and my favorite for simplicity is 'vim-plug'.
Here is a link to where you can get yours [Vim Plug](https://github.com/junegunn/vim-plug)

copy this script and run it in your terminal.

```
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

- I have provided a configuration file for you named 'init.vim'.
- Go to your HOME folder in Ubuntu hit Ctrl+h to unhide your .config folder.
- make a folder called nvim inside .config and copy-paste 'init.vim' into 'nvim'
- Now you are all ready to start your Vim/Neovim, open your terminal and type 'nvim' or 'vim'.
- You will be faced by a few errors don't worry, that is because you need to install the plugins in the configuration file. To do that hit ENTER to continue a few times then Vim/Neovim will open up.Type ':PlugInstall' exactly the same way you see it here, and hit ENTER again.
- You will see that Vim-Plug installs all the Plugins and now you are all done. The next step is to just read a few of my notes to see a little bit of what the configuration looks like. To do that close and open a new terminal or hit Ctrl+z (This will Force close Vim/Neovim), then start it again  by typing 'nvim ~/.config/nvim/init.vim' (this will open the your configuration file). I have made some notes, it would help guide you through the configuration. If you have any trouble a google search will help. But most of it is kinda straightforward.
- Here are some Commands that will help you get started with Vim/Neovim:

### Handy Keybinding or Keyboard Shortcuts

- ESC = Will get you back to Normal Mode.
- i  = Insert Mode this will allow you to type. 
- a  = Will put you in Insert Mode the right after where your cursor is.
- s  = Will take what ever you selected and replace it with whatever you type in Insert Mode.
- x  = Will cut selected text
- p  = Pastes the copied what is your clipboard.
- P  = Pastes before the cursor.
- o  = Will create a new line and put you in Insert Mode.  O capital puts a like above the current line
- dd = Will delete the current line
- d = Will delete selected text
- yy  = Will copy current line to clipboard
- y = Will copy selected line to clipboard
- I  = Insert Mode this will allow you to type. At the beginning of of the line.
- v = Visual Mode allows you to Select.
- Ctrl+v = Visual Mode allows you to Select.
- TAB = Will select the next Suggestion Shift+TAB will go backwards
- viw = WIll allow you to Select the Word your cursor is in.

### Moving around in Normal Mode

- h = left
- j = down
- k = up
- l = right

#### Spliting the Screen in to Panels

*Check the Configuration, if you would like to change the Leader Button*
*<leader> = Spacebar*
- Type :sp = Horizontal Split
- <leader> vs = Vertical Split

*To close a panel Type ':q' | if there is only one screen open you will close the Vim/Neovim Session 

#### Moving Between Panels
- Ctrl+h = Moving to the panel to the left
- Ctrl+j = Moving to the panel to the bottom
- Ctrl+k = Moving to the panel to the top
- Ctrl+l = Moving to the panel to the right

### Vim Commands

- :q = Quit or Close Panel
- :w = Save 
- :wq = Save and Quit
- :q! = Quit without Saving
- :h = help
- :h + anything = will allow you search help for different things
- : + TAB = will allow you to see different commands you can

### NerdTree

- Ctrl+t = Will open a side-panel with a file-tree.
- m = To see more NerdTree Options

### Git - Fugitive

- <leader>gs = git status
    - s = select item to be staged
    - u = select item to be unstaged

- <leader>gc = git commit
    - Type :wq = to make the commit
    - Type :q! = to cancel commit

- <leader>gsh = git push
