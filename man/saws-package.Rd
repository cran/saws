\name{saws-package}
\alias{saws-package}
\docType{package}
\title{Small-Sample Adjustments for Wald tests Using Sandwich Estimators
}
\description{Tests coefficients with sandwich estimator of variance and with small samples. 
Regression types supported are gee, linear regression, and conditional logistic regression.
}
\details{
\tabular{ll}{
Package: \tab saws\cr
Type: \tab Package\cr
Version: \tab 0.9-6.0\cr
Date: \tab 2012-04-19\cr
License: \tab GPL-2 or greater \cr
}
The main function of this package is \code{\link{saws}}, which takes output from some regression models
(gee, linear regression, conditional logistic regression) and gives inferences (confidence intervals, p-values) 
using small sample adjusted sandwich estimators of variance. Using methods described in Fay and Graubard (2001).

The output from the regression model must be a list including the following  
three elements:
The 'coefficients' is a vector with p parameter 
estimates, and is a standard output from the regression. The matrix 'u' is K by p with u[i,] the ith 
estimating equation, where there are K approximately independent estimating equations. The array 'omega' is K by p by p  
where omega[i,,] is a p by p matrix estimating - du/dbeta (here beta=coefficients). See Fay and Graubard (2001) for details. 

Since the 'u' matrix and 'omega' array are not normally part of standard output,  
 there are three specialized functions for creating regression output for use in the 
\code{\link{saws}} function: \code{\link{mgee}} (for gee), \code{\link{lmfitSaws}} (for linear models) and \code{\link{clogistCalc}} (for conditional logistic regression). 
For example, the function \code{mgee} 
does a gee analysis using the \code{gee} function 
of the gee package, takes the output and runs it through the \code{\link{geeUOmega}} function to create the 'u' matrix and the 'omega' array, and adds those onto the output 
from the gee (in the process other output from the gee may be corrected, see \code{\link{geeUOmega}}). 



The cox regression function is not included in this version of the package. Unless there is demand (and I have time) it will not be included in a future version. 
There is a demo recreating the example in Fay and Graubard (2001).  
}
\author{
M.P. Fay

Maintainer: Michael Fay <mfay@niaid.nih.gov>
}
\references{ Fay and Graubard (2001). Small-Sample Adjustments for Wald-Type Tests Using Sandwich Estimators.
Biometrics 57: 1198-1206. (for copy see /inst/doc/ directory}
\keyword{ package }
%\seealso{\code{\link[<pkg>:<pkg>-package]{<pkg>}} ~~}
\examples{
library(gee)
data(warpbreaks)
g<-gee(breaks~tension,id=wool, data=warpbreaks, corstr="exchangeable")
guo<-geeUOmega(g)
saws(guo)
}
