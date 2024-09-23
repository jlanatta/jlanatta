## Console replacements
  - ls: [exa](https://the.exa.website)
  - cat: [bat](https://github.com/sharkdp/bat)
  - top: [btop](https://github.com/aristocratos/btop)

### Install
```
brew install eza
brew install bat
brew install btop
```
## Utilities
```
brew install --cask provisionql
```
## Aliases

```
vi ~/.zshrc
```

``` bash
alias ls="eza"
alias ll="eza -alh --grid"
alias tree="eza --tree"
alias cat="bat"
```

## Gems
### Sneakers - GRPC
Parece que tiene problemas con otras gemas, desinstalando la version actual de ruby borra todas las gemas.
```
rbenv uninstall 3.1.3
rbenv install 3.1.3
export DLDFLAGS=-Wl,-undefined,dynamic_lookup
gem install grpc -v 1.50.0
bundler
```
### Rails
```
brew install shared-mime-info
```
### Postgres
```
brew install libpq
bundle config build.pg --with-pg-config=/opt/homebrew/opt/libpq/bin/pg_config
bunder
```
