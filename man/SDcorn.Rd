\name{SDcorn}
\alias{SDcorn}
\docType{data}
\title{Mammary tumors in Sprague-Dawley rats fed Corn Oil}
\description{
These data are part of a meta analysis to determine how fat calories and total calories 
effect the changes of getting a mammary tumor.  
}
\usage{data(SDcorn)}
\format{
  A data frame with 104 observations on the following 10 variables.
  \describe{
    \item{\code{ARTICLE}}{a numeric vector}
    \item{\code{NTUM}}{a numeric vector}
    \item{\code{N}}{a numeric vector}
    \item{\code{TFA2}}{a numeric vector}
    \item{\code{KCA2}}{a numeric vector}
    \item{\code{PFC}}{a numeric vector}
    \item{\code{LOGIT}}{a numeric vector}
    \item{\code{KCAL}}{a numeric vector}
    \item{\code{SET}}{a numeric vector}
    \item{\code{TEMPSET}}{a numeric vector}
  }
}
\details{Note the adjustment in Fay, Graubard, Freedman, and Midthune (1998) is slightly different from the one 
in Fay and Graubard (2001) so the \code{\link{saws}} does not match exactly with the 1998 paper.

For relationship of article numbers to references see Article.numbers.txt in the /doc/ directory. 
}
%\source{  ~~ reference to a publication or URL from which the data were obtained ~~}
\references{
Fay, MP, Freedman, LS, Clifford, CK, Midthune, DN. Cancer Research 57: 3979-3988.

Fay, MP, Graubard, BI, Freedman, LS, Midthune, DN. Biometrics 54: 195-208.

Fay, MP, Graubard, BI. Biometrics 57: 1198-1206.
}
\examples{
data(SDcorn)
## maybe str(SDcorn) ; plot(SDcorn) ...
}
\keyword{datasets}
