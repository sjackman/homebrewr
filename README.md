homebrewr
================================================================================

An R package to install software using Homebrew.

Installation
================================================================================

```r
# install.packages("devtools")
devtools::install_github("sjackman/homebrewr")
```

To install Homebrew on Mac OS see http://brew.sh/

To install Homebrew on Linux see http://brew.sh/linuxbrew/

Examples
================================================================================

```r
brew_install("hello")
brew_remove("hello")
brew_update()
brew_upgrade()
```
