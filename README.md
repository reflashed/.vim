### 1. First install vim

```
sudo apt install vim-gnome
```

### 2. Make sure the version of vim you installed can copy to clipboard

```
vim
:echo has('clipboard')
```

This should output `1` if vim can copy to system clipboard

### 3. Navigate to your home dir and clone this repo

```
cd ~
git clone --recurse-submodules https://github.com/reflashed/.vim
```

Remember to use the `--recurse-submodules` flag because the pathogen bundles are just git repos themselves

### 4. Now you are ready to `vim`
