## neovim_dotfiles
Basic neovim setup in vimscript which is meant to be friendly to setups on systems where you don't have perms to setup things as you might like (e.g. on HPCs). All requirements can be handled through HPC friendly package managers (see links below in requirements, all of which are obtainable through pip/conda/npm, at least one of which you should have access to on HPC)

This is not meant to be an elaborate config, just something to get started with the basics, e.g. NerdTree, NerdCommenter, airline, some colorschemes, and GitHub Copilot.

Setup:
1. Clone the repo to your config directory.
    ```git clone https://github.com/r2stanton/neovim_dotfiles ~/.config/nvim```
2. Make sure you have the Requirements below.
3. Open neovim and run ```:PlugInstall```


### Requirements
1. vim-plug, as it's the package manager
- https://github.com/junegunn/vim-plug
2. node.js > 16.0 if you want Copilot 
- https://docs.npmjs.com/downloading-and-installing-node-js-and-npm
3. neovim
- https://github.com/neovim/neovim/wiki/Installing-Neovim

### Bindings
A number of these bindings are the defaults from the plugin, however this is meant to act more as a 'cheatsheet' than a changelog.
- Leader = SPACE
- Toggle NerdTree = Leader+Tab
- NerdCommenter
- - Comment block = Leader+cc
- - Uncomment block = Leader+cu
- Navigate splits = Ctrl+hjkl for split direction
- Move to next file in buffer = Leader+1
- Move to previous file in buffer = Leader+2
- Close file in buffer = Leader+l

### Miscellaneous
This is meant to serve as the go-to for how to change the configuration if you're not familiar with the format of the vimscript init.vim file. The format is "desired change" : "what you need to search for in the init.vim file to make the desired change."
- Change/Remove the vertical bar at 80 characters:  'set colorcolumn=0'
- Add/remove relaive linenumbers:  'set number relativenumber'
- Tabs/spacing/indentation: 'Tabs/spacing/indentation'


