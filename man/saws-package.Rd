\name{saws-package}
\alias{saws-package}
\docType{package}
\title{Small-Sample Adjustments for Wald tests Using Sandwich Estimators
}
\description{Tests coefficients with sandwich estimator of variance and with small samples. 
Regression types supported are gee, cox regression, and conditional logistic regression.
}
\details{
\tabular{ll}{
Package: \tab saws\cr
Type: \tab Package\cr
Version: \tab 0.9-5.3\cr
Date: \tab 2012-04-19\cr
License: \tab GPL-2 or greater \cr
}
The main function of this package is \code{\link{saws}}, which takes output from some regression models
(gee, cox regression, conditional logistic regression) and gives inferences (confidence intervals, p-values) 
using small sample adjusted sandwich estimators of variance. 

In this version of the package, there are two specialized functions for creating regression output for use in the 
\code{\link{saws}} function: \code{\link{mgee}} and \code{\link{clogistCalc}}. The function \code{mgee} is a slight modification of the 
\code{gee} function that creates the 'u' matrix and the 'omega' array. The 'coefficients' is a vector with p parameter 
estimates, and is a standard output from the regression. The matrix 'u' is K by p with u[i,] the ith 
estimating equation, where there are K approximately independent estimating equations. The array 'omega' is K by p by p  
where omega[i,,] is a p by p matrix estimating - du/dbeta (here beta=coefficients). See Fay and Graubard (2001) for details. 

The cox regression function is not included in this version. It should be included in a future version. 
There is a demo recreating the example in Fay and Graubard (2001).  
}
\author{
M.P. Fay

Maintainer: Michael Fay <mfay@niaid.nih.gov>
}
\references{ Fay and Graubard (2001). Small-Sample Adjustments for Wald-Type Tests Using Sandwich Estimators.
Biometrics 57: 1198-1206. (for copy see \code{vignette("FayGraubard")})}
\keyword{ package }
%\seealso{\code{\link[<pkg>:<pkg>-package]{<pkg>}} ~~}
\examples{
library(gee)
data(warpbreaks)
mout<-mgee(breaks~tension,id=wool, data=warpbreaks, corstr="exchangeable")
saws(mout)
}
