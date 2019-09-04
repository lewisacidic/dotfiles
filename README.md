# dotfiles

My dotfiles, controlled by [chezmoi](https://github.com/twpayne/chezmoi).

## Deploying

Install chezmoi using their [instructions](https://github.com/twpayne/chezmoi/blob/master/docs/INSTALL.md), or install to `./bin` with:

```shell
curl -sfL https://git.io/chezmoi
```

and drop the dotfiles

```shell
chezmoi init --apply https://github.com/lewisacidic/dotfiles
```
