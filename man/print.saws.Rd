\name{print.saws}
\alias{print.saws}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Print saws object}
\description{Prints confidence intervals and p-values from saws object.}
\usage{
\method{print}{saws}(x, digits = NULL, ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{object of class 'saws'}
  \item{digits}{ number of digits}
  \item{\dots}{ other objects passed to print default}
}
\details{
THe default is to test that each parameter (i.e., each Estimate) is 0. Then the output printed is those estimates with confidence intervals and p-values. Under the default the test matrix is a p X p diagonal matrix, and beta0 is a p X 1 matrix of 0. If the default is not true then the jth Estimate column represents the jth row of  
\code{test * coef - beta0}, where '*' is matrix multiplication and 'coef' are the parameter estimates. Also when the default is not true, then the test matrix and beta0 vector are printed.  
}
%\examples{}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{misc}
%\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
