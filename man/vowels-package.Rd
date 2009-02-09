\name{vowels-package}
\alias{vowels-package}
\alias{vowels}
\docType{package}
\title{VOWELS: Vowel Manipulation, Normalization, and Plotting Package}
\description{
vowels is an R package for the manipulation, normalization, and plotting of phonetic and sociophonetic vowel formant data.  vowels is the backend for the NORM website - http://ncslaap.lib.ncsu.edu/tools/norm/ 
}
\details{
\tabular{ll}{
Package: \tab vowels\cr
Type: \tab Package\cr
Version: \tab 1.0\cr
Date: \tab 2009-01-23\cr
License: \tab GPL-3\cr
URL: \tab http://ncslaap.lib.ncsu.edu/tools/norm/\cr
}
This package instantiates a number of normalization routines (e.g., Bark difference, Nearey, Lobanov) for acoustic vowel data.  It also provides a specialized plotting function to generate "standard" vowel plots (F2~F1), and to overlay information like standard deviation bars on those vowel plots.  The package also includes general purpose functions for manipulating data frames of vowel formant data, such as conversion functions to Bark and ERB scales.

This package is the backend for the NORM website - http://ncslaap.lib.ncsu.edu/tools/norm/ . Users of the website are urged to use this package directly within R for a wider-range of functionality and customizability.  See the NORM website - http://ncslaap.lib.ncsu.edu/tools/norm/ - (and the package man pages) for more information about vowel normalization and the specific methods implemented in the package.
}
\author{
Kendall, Tyler and Erik R. Thomas 2009

Maintainer: Kendall, Tyler <tsk3@duke.edu>
}
\references{
Thomas, Erik R. and Tyler Kendall. 2007. NORM: The vowel normalization and plotting suite. [ Online Resource: http://ncslaap.lib.ncsu.edu/tools/norm/ ]

Adank, Patti, Smits, Roel, and van Hout, Roeland. 2004. A comparison of vowel normalization procedures for language variation research. \emph{Journal of the Acoustical Society of America} 116:3099-107.

Lobanov, B. M. 1971. Classification of Russian vowels spoken by different listeners. \emph{Journal of the Acoustical Society of America} 49:606-08.

Nearey, Terrance M. 1977. \emph{Phonetic Feature Systems for Vowels}. Dissertation, University of Alberta. Reprinted 1978 by the Indiana University Linguistics Club.
}
\keyword{ hplot }
\keyword{ dplot }
\keyword{ misc }
\keyword{ methods }

\examples{
vowels <- load.vowels("http://ncslaap.lib.ncsu.edu/tools/norm/downloads/CentralOhioNORM.txt")
vowelplot(vowels, color="vowels", label="vowels")

vowelplot(norm.bark(vowels), speaker="JOHG09", color="vowels", color.choice=rainbow(length(unique(vowels[,2]))), label="none", title="JOHG09 Bark Difference Normalized Vowels")
add.spread.vowelplot(norm.bark(vowels), speaker="JOHG09", sd.mult=1, color.choice=rainbow(length(unique(vowels[,2]))), color="vowels", leg=TRUE)

normed.vowels <- norm.lobanov(vowels)
vowelplot(normed.vowels, speaker="JOHG09", shape="vowels")

vowelplot(norm.wattfabricius(vowels), speaker="JOHG09", shape="vowels", color="vowels", color.choice=rainbow(length(unique(vowels[,2]))), leg="vowels", title="Rainbow colored vowels for JOHG09\nWatt & Fabricious normalized")
}
