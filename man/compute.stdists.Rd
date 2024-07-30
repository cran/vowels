\name{compute.stdists}
\alias{compute.stdists}
\title{Compute Standard Distances for Vowel Data}
\description{
  Computes the standard distances for uniquely named vowels, in a data frame of vowel formant data.
}
\usage{
compute.stdists(vowels, use.f3 = FALSE)
}
\arguments{
  \item{vowels}{A required data frame of the format: speaker_id, vowel_id, context, F1, F2, F3. The context column can be blank. The F3 column can also be blank if \code{use.f3} is \code{FALSE}.}
  \item{use.f3}{A logical value indicating whether to include F3 values in the calculations. Default is \code{FALSE}.}
}
\details{
  This function calculates the standard distances for each unique vowel in the provided data frame. The metric is calculated as the mean Euclidean distance of each data point for a single vowel category from the centroid for that category. It may be used to compare data spread for different vowel categories, but the measurements need to be on the same scale. Therefore, comparisons should not be made across different normalization methods. Larger values of this metric indicate larger data scatter.
  By default, the function uses two-dimensional input (F1 and F2, or any corresponding normalized values), but for original data measured in Hz or data normalized using methods that return three values (such as Labov or Nearey), three-dimensional input is possible, based on the \code{use.f3} argument.
}
\value{
  A data frame with the following columns:
  \item{Vowel}{The unique vowel identifier.}
  \item{N}{The count of samples for each vowel.}
  \item{Standard.Distance}{The calculated standard distance for each vowel.}
}
\author{Stolarski, Lukasz <lukasz.stolarski@ujk.edu.pl>}
\seealso{ \code{\link{compute.means}}, \code{\link{compute.medians}}, \code{\link{compute.sds}}, \code{\link{compute.bwr}} }
\examples{
# Example usage with F1 and F2
data(ohiovowels)
stdists.2d <- compute.stdists(ohiovowels)

# Example usage with F1, F2, and F3
stdists.3d <- compute.stdists(ohiovowels, use.f3 = TRUE)

# Example usage with normalized F1 and F2
stdists.lobanov.2d <- compute.stdists(norm.lobanov(ohiovowels))
}
\keyword{methods}
