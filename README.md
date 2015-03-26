homebrewr
================================================================================

An R package to install software using Homebrew.

Installation
================================================================================

```r
# install.packages("devtools")
devtools::install_github("sjackman/homebrewr")
```

Examples
================================================================================

```r
brew_install("hello")
brew_remove("hello")
brew_update()
brew_upgrade()
```
