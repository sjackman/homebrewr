#' homebrewr: Install software using Homebrew
#'
#' Install software on Mac OS and Linux systems using Homebrew and Linuxbrew.
#'
#' @docType package
#' @name homebrewr
#' @author Shaun Jackman \email{sjackman@@gmail.com}
NULL

#' Install formula.
#'
#' @param formula The name of one or more formulae.
#' @export
brew_install <- function(formula)
	system2("brew", c("install", formula))

#' Uninstall formula.
#'
#' @param formula The name of one or more formulae.
#' @export
brew_remove <- function(formula)
	system2("brew", c("remove", formula))

#' Fetch the newest version of Homebrew from GitHub using git.
#' @export
brew_update <- function()
	system2("brew", "update")

#' Upgrade installed formula.
#'
#' @param formula The name of one or more formulae.
#' If formula is NULL, upgrade all formulae.
#' @export
brew_upgrade <- function(formula = NULL)
	system2("brew", c("upgrade", formula))

#' List installed formulae or the files installed by a formula.
#'
#' @param formula The name of one or more formulae.
#' If formula is NULL, return all installed formulae.
#' @return A character vector of installed formulae or files.
#' @export
brew_list <- function(formula = NULL)
	system2("brew", c("list", formula), stdout = TRUE)

#' List installed formulae and their versions.
#'
#' @param formula The name of one or more formulae.
#' If formula is NULL, return all installed formulae.
#' @return A character vector of installed formulae.
#' @export
brew_list_versions_raw <- function(formula = NULL)
	system2("brew", c("list", "--versions", formula), stdout = TRUE)

#' Search for formulae whose names contain the substring text.
#'
#' @param text The substring for which to search.
#' If text is NULL, return all available packages.
#' @return A character vector of matching formulae.
#' @export
brew_search <- function(text = NULL)
	system2("brew", c("search", text), stdout = TRUE)

#' Return formulae that have an updated version available.
#' 
#' @return A character vector of outdated formulae.
#' @export
brew_outdated <- function()
	system2("brew", "outdated", stdout = TRUE)
