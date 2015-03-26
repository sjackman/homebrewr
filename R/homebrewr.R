#' Install formula.
#'
#' @param formula The name of one or more formulae.
brew_install <- function(formula)
	system2("brew", c("install", formula))

#' Uninstall formula.
#'
#' @param formula The name of one or more formulae.
brew_remove <- function(formula)
	system2("brew", c("remove", formula))

#' Fetch the newest version of Homebrew from GitHub using git.
brew_update <- function()
	system2("brew", "update")

#' Upgrade installed formula.
#'
#' @param formula The name of one or more formulae.
#' If formula is NULL, upgrade all formulae.
brew_upgrade <- function(formula = NULL)
	system2("brew", c("upgrade", formula))

#' List installed formulae or the files installed by a formula.
#'
#' @param formula The name of one or more formulae.
#' If formula is NULL, return all installed formulae.
#' @return A character vector of installed formulae or files.
brew_list <- function(formula = NULL)
	system2("brew", c("list", formula), stdout = TRUE)

#' Search for formulae whose names contain the substring text.
#'
#' @param text The substring for which to search.
#' If text is NULL, return all available packages.
#' @return A character vector of matching formulae.
brew_search <- function(text = NULL)
	system2("brew", c("search", text), stdout = TRUE)
