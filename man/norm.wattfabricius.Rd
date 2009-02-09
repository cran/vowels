\name{norm.wattfabricius}
\alias{norm.wattfabricius}
\title{ Normalize Vowels with the Watt \& Fabricius Method }
\description{
  Normalizes acoustic vowel formant data using the Watt \& Fabricius Method.
}
\usage{
norm.wattfabricius(vowels, norm.means=FALSE, mod.WF=FALSE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{vowels}{ a required dataframe of the format: speaker\_id, vowel\_id, context, F1, F2, F3, F1\_glide, F2\_glide, F3\_glide.  The context column and glide columns must exist but can be empty. }
  \item{norm.means}{ if TRUE, the method returns only the normalized mean values for the vowels and not the individual tokens.  Default is FALSE. }
  \item{mod.WF}{ if TRUE, the method implements a modified version of the Watt \& Fabricius algorithm (after Fabricius, Watt, and Johnson submitted) whereby the F2 value for bottom lower corner of the vowel triangle is computed from the midpoint between the F2 values for the top two corners instead of the mean F2 value of the  TRAP vowel class.  Default is FALSE. }
}
\details{
  The Watt \& Fabricius method is vowel extrinsic, but unlike Lobanov's, Nearey's, and Labov's methods, the centroid or grand mean value that it uses to calculate normalized values is based on points that represent the corners of the vowel envelope: one for the high front corner, one for the high back corner, and one for the bottom corner. In Watt and Fabricius's original formulation, which was designed for the RP dialect of English, the mean F1 and F2 of the BEET vowel were used as the minimum F1 and maximum F2 values; the minimum F1 value of BEET was also used as the minimum F2 value. The mean F1 and F2 of BAT (which Watt and Fabricius label as TRAP) comprised the point for the bottom corner of the vowel envelope. Watt and Fabricius (2002) provide a clear step-by-step example of their process.  In more recent work (Fabricius, Watt, and Johnson submitted), Watt and Fabricius have slightly modified their formula, which is optionally available here through the mod.WF argument.
  
  See Thomas and Kendall (2007) for a fuller description of the implementation here.
}
\value{ A data frame in one of two formats:
	If norm.means == TRUE: a data frame with speaker\_id, vowel\_id,  vowel\_N, F1/S(F1), F2/S(F2), F1g/S(F1g), F2g/S(F2g) with the attribute "mean.values" == TRUE
	If norm.means == FALSE: a data frame with speaker\_id, vowel\_id, F1/S(F1), F2/S(F2), F1g/S(F1g), F2g/S(F2g).
	In both cases, the data frame also has the attribute "norm.method" == "Watt \& Fabricius"}
\section{Warning }{The development of the library and this function are ongoing.  The arguments to the function may change in future version.}
\references{ Thomas, Erik R. and Tyler Kendall. 2007. NORM: The vowel normalization and plotting suite. [ Online Resource: http://ncslaap.lib.ncsu.edu/tools/norm/ ]

Watt, Dominic and Fabricius, Anne. 2002. Evaluation of a technique for improving the mapping of multiple speakers' vowel spaces in the F1 ~ F2 plane. In D. Nelson, Leeds Working Papers in Linguistics and Phonetics 9:159-73.
}
\author{ Kendall, Tyler <tsk3@duke.edu> }
\seealso{ \code{\link{norm.bark}}, \code{\link{norm.labov}}, \code{\link{norm.lobanov}}, \code{\link{norm.nearey}} }
%\examples{ }
\keyword{ methods }
