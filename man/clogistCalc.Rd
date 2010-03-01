\name{clogistCalc}
\alias{clogistCalc}
\alias{clogistInfo}
\alias{clogistLoglike}
\title{ Conditional Logistic Regression fit}
\description{
Perform conditional logistic regression with output formatted for input into \code{\link{saws}} which 
will give confidence intervals and p-values. 
}
\usage{
clogistCalc(n, m, x, set, initb = NA, h = 1e-04, maxitr = 15, epsilon = 1e-08, conf.level = 0.95)
clogistLoglike(n, m, x, beta)
clogistInfo(n, m, x, beta, h)
}
\arguments{
  \item{n}{vector of number at risk}
  \item{m}{vector of number of events}
  \item{x}{matrix of covariates}
  \item{set}{vector of denoting clusters}
  \item{initb}{vector of initial parameter estimates, initb=NA uses unconditional logistic regression for initial estimate}
  \item{h}{small value for numeric integration}
  \item{maxitr}{maximum number of iterations}
  \item{epsilon}{convergence criteria (see details) }
  \item{conf.level}{ confidence level for confidence intervals}
  \item{beta}{vector of current parameter estimate}
}
\details{
The main program is \code{clogistCalc}. It calls  \code{clogistLoglike} and 
\code{clogistInfo} which are not to be called explicitly. The function
\code{clogistLoglike} finds the loglikelihood using recursive methods, 
and \code{clogistInfo} calculates score vector and information
matrix using numerical methods. Both methods are described in Gail, Lubin and Rubinstein (1981), and the h value is 
the same as is defined in that paper. 

The algorithm stops when the largest absolute relative change in either the loglikelihood or in any parameter 
is less than epsilon. For parameters close to zero (i.e., less than 0.01 in absolute value) the relative change 
is defined as change/0.01.
}
\value{
A list for input into the \code{\link{saws}} function, containing  
the following elements (K=number of clusters, p=number of parameters):
  \item{coefficients}{p by 1 vector of parameter estimates}
  \item{u}{K by p matrix of scores or estimating equations}
  \item{omega}{K by p by p array of -1*information}
}
\references{     Gail, Lubin and Rubinstein (1981) Biometrika, 703-707 }
\author{Michael Fay, modeled after a Fortran program by Doug Midthune}
\seealso{ See also \code{\link{saws}}}
\examples{

data(micefat)
cout<-clogistCalc(micefat$N,micefat$NTUM,micefat[,c("fatCal","totalCal")],micefat$cluster)
## usual model based variance
saws(cout,method="dm")
## sandwich based variance with small sample correction
s3<-saws(cout,method="d3")
s3
print.default(s3)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{nonlinear}
%\keyword{regression}% __ONLY ONE__ keyword per line
