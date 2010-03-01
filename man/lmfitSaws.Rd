\name{lmfitSaws}
\alias{lmfitSaws}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ Linear model function to output extra objects for saws }
\description{
This is a very basic linear model function. It outputs only the objects needed for input into \code{\link{saws}}. 
}
\usage{
lmfitSaws(x,y)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{design matrix}
  \item{y}{response vector}
}
\details{ The \code{\link{saws}} function requires three inputs, the parameter estimates (coefficients), 
u, and omega. The value u is the K by p matrix of estimating equations evaluated at the coefficient, 
where each row is an independent estimating 
equation. For the linear model u[i,] = x[i,] * residual[i]. The value omega is a K by p by p array, where 
omega[i,,] is the derivative of the ith estimating equation with respect to the parameter vector. For the linear
model omega[i,,]= t(Xi) %*% Xi, where Xi=matrix(x[i,],p,1).  
}
\value{ 
A list with the following elements
\item{coefficients}{p by 1 coefficient vector}
\item{u}{K by p matrix of estimating equations}
\item{omega}{K by p by p array, see details}
}
\references{ Fay and Graubard (2001). Small-Sample Adjustments for Wald-Type Tests Using Sandwich Estimators.
Biometrics 57: 1198-1206. (for copy see \code{vignette("FayGraubard")}) }
\author{ M.P. Fay}
%\note{ ~~further notes~~  ~Make other sections like Warning with \section{Warning }{....} ~}
\seealso{\code{link{lm}}}
\examples{
set.seed(1)
n<-20
x1<-rnorm(n)
x2<-factor(c(rep("a",n/2),rep("b",n/2)))
y<-rnorm(n,x1)
out<-lmfitSaws(model.matrix(~x1*x2),y)
saws(out)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{htest}
%\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
