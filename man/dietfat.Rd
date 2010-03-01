\name{dietfat}
\alias{dietfat}
\docType{data}
\title{Mammary Tumors and Different Types of Dietary Fat in Rodents}
\description{
This is a data set from a meta analysis described in Fay, Freedman, Clifford, and Midthune (1997).
}
\usage{data(dietfat)}
\format{
  A data frame with 442 observations on the following 9 variables.
  \describe{
    \item{\code{ARTICLE}}{a numeric vector}
    \item{\code{SET}}{a numeric vector}
    \item{\code{N}}{a numeric vector}
    \item{\code{RESTRICT}}{a numeric vector}
    \item{\code{PN3}}{a numeric vector}
    \item{\code{PN6}}{a numeric vector}
    \item{\code{PZERO}}{a numeric vector}
    \item{\code{PMONO}}{a numeric vector}
    \item{\code{NTUM}}{a numeric vector}
  }
}
\details{
For relationship of article numbers to references see Article.numbers.txt in the /doc/ directory. 
}
%\source{}
\references{
Fay, MP, Freedman, LS, Clifford, CK, Midthune, DN. Cancer Research 57: 3979-3988.

Fay, MP, Graubard, BI. Biometrics 57: 1198-1206.
}
\examples{
data(dietfat)
## maybe str(dietfat) ; plot(dietfat) ...
}
\keyword{datasets}
