% Encoding: UTF-8
\name{compute.bwr}
\alias{compute.bwr}
\title{Compute Between-Within-Ratio for Vowel Data}
\description{
  Computes the ratio of between-category distances to within-category distances, in a data frame of vowel formant data.
}
\usage{
compute.bwr(vowels, use.f3 = FALSE)
}
\arguments{
  \item{vowels}{A required data frame of the format: speaker_id, vowel_id, context, F1, F2, F3. The context column can be blank. The F3 column can also be blank if \code{use.f3} is \code{FALSE}.}
  \item{use.f3}{A logical value indicating whether to include F3 values in the calculations. Default is \code{FALSE}.}
}
\details{
  This function calculates the ratio of the mean between-category distance to the mean within-category distance for vowel formant data. The metric is calculated as the mean Euclidean distance between all data points belonging to different vowel categories divided by the mean Euclidean distance between all data points belonging to the same vowel categories. It can be used to compare the clustering of vowel productions across different normalization methods, as long as the dimensionality of data is the same. Larger values of this metric indicate better vowel category separation and smaller data spread within individual vowel categories.
  By default, the function uses two formant frequencies (F1 and F2, or any corresponding normalized values), but for original data measured in Hz or data normalized using methods that return three values (such as Labov or Nearey), three-dimensional input is possible, based on the \code{use.f3} argument.
}
\value{
  A numeric value representing the ratio of the mean between-category distance to the mean within-category distance.
}
\references{
The "Between-Within-Ratio" metric is based on the description in:
Miller, James D. 1989. Auditory-perceptual interpretation of the vowel. The Journal of the Acoustical society of America, 85(5), 2114-2134.

The implementation in this package follows:
Stolarski, Lukasz. under review. Efficacy of Vowel Normalization Methods for Factors Other than Inter-Speaker Variability.
}
\author{Stolarski, Lukasz <lukasz.stolarski@ujk.edu.pl>}
\seealso{ \code{\link{compute.means}}, \code{\link{compute.medians}}, \code{\link{compute.sds}}, \code{\link{compute.stdists}} }
\examples{
# Example usage with F1 and F2
data(ohiovowels)
bwr.2d <- compute.bwr(ohiovowels)

# Example usage with F1, F2, and F3
bwr.3d <- compute.bwr(ohiovowels, use.f3 = TRUE)

# Example usage with normalized F1 and F2
bwr.normlobanov.2d <- compute.bwr(norm.lobanov(ohiovowels))
}
\keyword{methods}
