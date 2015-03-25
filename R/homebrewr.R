##' Install formula.
brew_install <- function(formula)
	system2("brew", c("install", formula))

##' Uninstall formula.
brew_remove <- function(formula)
	system2("brew", c("remove", formula))

##' Fetch the newest version of Homebrew from GitHub using git.
brew_update <- function()
	system2("brew", "update")

##' Upgrade installed formula.
brew_upgrade <- function(formula = NULL)
	system2("brew", c("upgrade", formula))

##' List installed formulae or the files installed by a formula.
##' @return A character vector of installed formulae or files.
brew_list <- function(formula = NULL)
	system2("brew", c("list", formula), stdout = TRUE)

##' Search formula names for pattern.
##' @return A character vector of matching formulae.
brew_search <- function(pattern = NULL)
	system2("brew", c("search", pattern), stdout = TRUE)
