\name{saws}
\alias{saws}
%\alias{saws.gee}
\alias{saws.default}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Small sample Adjustments for Wald-type tests using Sandwich estimator of variance}
\description{
This function takes an object from a regression function and gives confidence intervals and p-values using 
the sandwich estimator of variance corrected for small samples. 
}
\usage{
saws(x,test = diag(p), beta0 = matrix(0, p, 1), 
    conf.level = 0.95, method = c("d3", "d5", "d1", "d2", "d4", "dm"),bound=.75)
}
\arguments{
  \item{x}{a list containing three elements: coefficients, u, omega (see details)}
  \item{test}{either a numeric vector giving elements of coefficient to test,
or an r by p matrix of constants for testing (see details)}
  \item{beta0}{null parameters for testing (see details)}
  \item{conf.level}{level for confidence intervals}
  \item{method}{one of "d3", "d5", "d1", "d2", "d4",  or "dm" (see details)}
  \item{bound}{bound for bias correction, denoted b in Fay and Graubard, 2001}
}
\details{
Typically, the x object is created in a specialized function. Currently there are three such functions, 
\code{link{lmfitSaws}},\code{\link{geeUOmega}} and \code{\link{clogistCalc}}. The function \code{\link{lmfitSaws}} 
is a simple linear model function that creates all the output needed. The function \code{\link{geeUOmega}} takes output from the gee function of the gee package
and  creates the 'u' matrix and the 'omega' array. The 'coefficients' is a vector with p parameter 
estimates, and is a standard output from the regression. The matrix 'u' is K by p with u[i,] the ith 
estimating equation, where there are K approximately independent estimating equations. The array 'omega' is K by p by p  
where omega[i,,] is a p by p matrix estimating - du/dbeta (here beta=coefficients). See Fay and Graubard (2001) for details. 

Suppose that the coefficient vector from the regression is beta. Then we test r hypotheses, based on the the matrix product,
TEST (beta-beta0)=0, where TEST is an  r by p matrix. If the argument 'test' is an r by p matrix (where r is arbitrary), then TEST=test.
If 'test' is a vector, then each element of test corresponds to testing that row of beta is 0, i.e., TEST<-diag(p)[test,],
where p is the length of the coefficient vector. For example, test<-c(2,5), tests that beta[2]-beta0[2]=0 and that beta[5]-beta0[5]=0. 
The alternatives are always two-sided.


There are several methods available. They are all discussed in Fay and Graubard (2001). The naming of the 
methods follows that paper (see for example Table 1, where deltam corresponds to dm, etc.):
\describe{
\item{dm}{the usual model based method which does not use the sandwich, uses a chi squared distribution}
\item{d1}{the standard sandwich method which makes no corrections for small samples}
\item{d2}{sandwich method, no bias correction, uses F distribution with df=dhat (see paper)}
\item{d3}{(default method:sandwich method, no bias correction, uses F distribution with df=dtilde (see paper)}
\item{d4}{sandwich method, with bias correction, uses F distribution with df=dhatH (see paper)}
\item{d5}{sandwich method, with bias correction, uses F distribution with df=dtildeH (see paper)}
}
}
\value{
An object of class 'saws'. A list with elements:
  \item{originalCall}{call from the original object}
  \item{method}{method used (see details)}
  \item{test}{test matrix (see details)}
  \item{beta0}{beta0 vector (see details)}
  \item{coefficients}{estimated coefficients}
 \item{df}{a vector of estimated degrees of freedom. This will have as many elements as there are coefficients}
 \item{V}{variance-covariance matrix}
 \item{se}{vector of standard errors of the coefficients}
 \item{t.value}{a vector of t-values: test (coef - beta0)/se }
\item{p.value}{a vector of two-sided p-values}
\item{conf.int}{p by 2 matrix of confidence intervals} 
}
\references{ Fay and Graubard (2001). Small-Sample Adjustments for Wald-Type Tests Using Sandwich Estimators.
Biometrics 57: 1198-1206. (for copy see /inst/doc/ directory)}
\author{ M.P. Fay}
%\note{ ~~further notes~~  ~Make other sections like Warning with \section{Warning }{....} ~}
\seealso{ For examples, see \code{\link{geeUOmega}} and \code{\link{clogistCalc}}. See also \code{\link{print.saws}}}
%\examples{}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{htest}
\keyword{regression}% __ONLY ONE__ keyword per line
