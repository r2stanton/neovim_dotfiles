## neovim_dotfiles
Contains two basic neovim setups, one in vimscript (init.vim the vimscript
folder) and one in lua (init.lua in base folder)

The purpose of the vimscript setup is to be extremely lightweight with minimal
plugins, no completion, etc. (other than Copilot). The lua config is meant to 
be a minimally modified kickstart.vim setup 

All requirements can be handled through HPC friendly package managers. See
links below for requirements, all of which are obtainable through pip/conda/npm,
at least one of which you should have access to on your cluster.

Setup:
1. Clone the repo to your config directory.
    ```git clone https://github.com/r2stanton/neovim_dotfiles ~/.config/nvim```
2. Make sure you have the Requirements below.
3. Open neovim and run ```:PlugInstall``` if using the vimscript config.


### Requirements
1. vim-plug, as it's the package manager [vimscript config]
- https://github.com/junegunn/vim-plug
3. neovim
- https://github.com/neovim/neovim/wiki/Installing-Neovim
#### Optional
3. For Copilot support
- node.js > 16.0 
- https://docs.npmjs.com/downloading-and-installing-node-js-and-npm
4. For latex support
- vimtex plugin support is included in init.vim
- You'll need a vim compiler like latexmk which you can get via ```conda install -c conda-forge latexmk```
- Also you'll likely need pdflatex ```conda install -c conda-forge texlive-core```


### Bindings
A number of these bindings are the defaults from the corresponding plugin, however this is meant to act more as a 'cheatsheet' than a changelog.
- Leader = SPACE
- Toggle NerdTree = Leader+Tab
- NerdCommenter
- - Comment block = Leader+cc
- - Uncomment block = Leader+cu
- Navigate splits = Ctrl+hjkl for split direction
- Move to next file in buffer = Leader+1
- Move to previous file in buffer = Leader+2
- Close file in current buffer = Leader+-
- Toggle Copilot with :Copilot enable, :Copilot disable once neovim is open.


