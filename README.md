# solarized-16.vim

A partial port of the original `altercation/vim-colors-solarized` that works in neovim >= 0.10.0.

Only supports:

* Terminal only, no GUI
* 16 colors
* Terminal has been configured to already use solarized colors
* Base solarized dark and light
* No options (ie. `g:solarized_bold | g:solarized_underline | g:solarized_italic`)

## Usage

Install the theme

Use the theme:

```
set t_Co=16
set notermguicolors
set background=dark " or light
colorscheme solarized-16
```

### Porting process

`./build/solarized.vim` is the original vim solarized from: https://github.com/altercation/vim-colors-solarized/blob/master/colors/solarized.vim


Use sed to convert `highlight` calls to `echom`

```
$ cd ./build
$ echom_convert.sh > ./solarized_echom.vim
```

Create a minimal vimrc to load the echom converted file.

```
# ./vimrc.debug
set t_Co=16
set notermguicolors
source ./solarized_echom.vim
```

Start nvim with verbose logging to a temp file

```
$ cd ./build
# Dark
$ rm -f /tmp/nvim_log; nvim -V1/tmp/nvim_log --clean --cmd 'set background=dark' -u ./vimrc.debug

# Light
$ rm -f /tmp/nvim_log; nvim -V1/tmp/nvim_log --clean --cmd 'set background=light' -u ./vimrc.debug
```

Grab all of the `hi!` lines and add them to the colors file.

## Notes

#### Neovim 0.10.0

neovim 0.10.0 has broken backwards compatibility with colorscheme highlight links/groupings.
* https://github.com/neovim/neovim/issues/26378
* https://github.com/neovim/neovim/blob/574519d9d68f7f28a868e95ef0d081cbae6ddec4/runtime/doc/news.txt#L106-L109

It is now required to use `colors/vim.lua` (aka `colorscheme vim`) in neovim to reset the highlight group settings if you want to use colorschemes that do not explicitly define every group.

Example:
```
" nvim 0.9.5
:hi String
String         xxx links to Constant

" nvim 0.10.0
:hi String
String         xxx ctermfg=10 guifg=NvimLightGreen
```

#### Why fork/port?

The design of the original theme uses lots of string concat/interpolation based on the many different flavors and options supported.

Wanted to simply port for my use case over the last decade.

Here's to a decade more 🍻.
