bin
===

Programs for interacting with [drive a](https://github.com/benchristel/a).

These assume they're in a directory that's on your PATH.

## Dependencies

You probably have all of these, unless you're running this
in a bare-bones container for some reason.

- `bash`
- `git`
- `grep`
- `less`
- `column`
- `sed`
- `wc`

## Installation

Symlink the config files into your home directory. E.g:

```
# back up your current config files
cp ~/.bash_profile{,.bak}
cp ~/.gitconfig{,.bak}
cp ~/.vim{,.bak}
cp ~/.vimrc{,.bak}

# then, assuming you've cloned bin to your home directory...
ln -sf bin/util/.bash_profile ~/.bash_profile
ln -sf bin/util/prompt.sh ~/prompt.sh
ln -sf bin/util/.gitconfig ~/.gitconfig
ln -sf bin/util/.vim ~/.vim
ln -sf bin/util/.vimrc ~/.vimrc
```

Here's what the shell prompt looks like:

```
~/path/to/working/dir  |master ↑3 ✓|
>
```

The format of the git info in the prompt is derived from
[bash-it](https://bash-it.readthedocs.io/en/latest/themes-list/#list-of-themes).
