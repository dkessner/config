# config

## prompt 

In `.bashrc` (`.bash_profile` on macOS):

```
source ~/path/to/prompt.sh
``` 

## vim 

```
make
ln -s ~/path/to/vim ~/.vim
ln -s ~/path/to/vimrc.txt ~/.vimrc
```



## git

Call `gvim` without forking, so `git commit` waits
for editor to finish:
`gvim -f`

```
git config --global core.editor "gvim -f"
```

or edit  `~/.gitconfig`
```
[core]
        editor = gvim -f
```

