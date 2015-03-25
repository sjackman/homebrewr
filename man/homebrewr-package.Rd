\name{homebrewr-package}
\alias{homebrewr-package}
\alias{homebrewr}
\docType{package}
\title{Install software using Homebrew}
\description{
Install software on Mac OS and Linux systems using Homebrew and Linuxbrew.
}
\details{
\tabular{ll}{
Package: \tab homebrewr\cr
Type: \tab Package\cr
Version: \tab 0.1\cr
Date: \tab 2015-03-25\cr
License: \tab MIT\cr
}
\tabular{ll}{
brew_install \tab Install a software package.\cr
}
}
\author{
Written by Shaun Jackman.

Maintainer: Shaun Jackman <sjackman@gmail.com>
}
\references{
\tabular{ll}{
Homebrew \tab http://brew.sh\cr
Linuxbrew \tab http://brew.sh/linuxbrew\cr
}
}
\keyword{ package }
\examples{
\dontrun{
# Install the formula "hello".
brew_install("hello")
# Remove the formula "hello".
brew_remove("hello")
# Fetch the newest version of Homebrew from GitHub using git.
brew_update()
# Upgrade installed formulae.
brew_upgrade()
}
}
