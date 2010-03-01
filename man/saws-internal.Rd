\name{saws-internal}
\alias{PsiTildeCalc}
%\alias{HCalc}
\alias{dfCalc}
\alias{PsiHatCalc}
\alias{sawsCalc}
\title{Internal functions, not to be called directly}
\description{Called by \code{link{saws}} }
\usage{
PsiTildeCalc(u, H, test, omega, vm, vminv, p, K)
PsiHatCalc(u, H)
dfCalc(Psi, u, omega, H, test, vm)
%HCalc(omegai, b = 0.75, Vm = vm)
sawsCalc(beta, u, omega, test = diag(p), beta0 = matrix(0, p, 1), conf.level = 0.95, method = c("d3", "d5", "d1", "d2", "d4", "dm"),bound=.75)

}
\arguments{
  \item{p}{length of coefficient vector}
  \item{K}{number of terms in estimating equation}
  \item{beta}{coefficient vector of length p}
  \item{u}{K by p score matrix, u[i,] is the ith term in the estimating equation}
  \item{H}{K by p adjustment matrix, diag(H[i,])=Hi in Fay and Graubard, 2001}
  \item{test}{r by p test matrix}
  \item{omega}{K by p by p array, omega[i,,] estimates -du/dbeta.}
  \item{vm}{ p by p matrix,model based variance }
  \item{vminv}{inverse of vm}
   \item{conf.level}{confidence level for confidence intervals}
\item{method}{see \code{\link{saws}} }
  \item{bound}{bound for bias correction, denoted b in Fay and Graubard, 2001}
}
%\examples{}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{internal}
%\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
