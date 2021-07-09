# Getting Started

## 1. First install vim

```
sudo apt install vim-gnome
```

## 2. Make sure the version of vim you installed can copy to clipboard

```
vim
:echo has('clipboard')
```

This should output `1` if vim can copy to system clipboard

### If you are using Windows WSL2, you must further add the following to your .vimrc to enable copying from vim to Windows

```
" WSL yank support
let s:clip = '/mnt/c/Windows/System32/clip.exe'  " change this path according to your mount point
if executable(s:clip)
    augroup WSLYank
        autocmd!
        autocmd TextYankPost * if v:event.operator ==# 'y' | call system(s:clip, @0) | endif
    augroup END
endif
```

## 3. Navigate to your home dir and clone this repo

```
cd ~
git clone --recurse-submodules https://github.com/reflashed/.vim
```

Remember to use the `--recurse-submodules` flag because the pathogen bundles are just git repos themselves

If you forget to clone the repository recursively, you can just run

```
git submodule update --init
```

from within the submodule repository you need to download.

## 4. Now you are ready to `vim`

# Learning vim

The following are helpful resources for learning vim:

- [vim adventures](https://vim-adventures.com/)
- [vim golf](https://www.vimgolf.com/)

# Extending vim

We use [pathogen](https://github.com/tpope/vim-pathogen) to install vim plugins. To add a plugin, simply add the plugin repository to the bundle directory in this repository as a [submodule](https://git-scm.com/book/en/v2/Git-Tools-Submodules).

e.g.

```
cd ~/.vim/bundle
git submodule add https://github.com/tpope/vim-surround
```

# Problems

Vim not extending background color to the whole screen:
  - https://serverfault.com/questions/268555/how-to-tell-vim-to-extend-the-background-color-to-the-whole-screen
  - I added this to my vimrc
