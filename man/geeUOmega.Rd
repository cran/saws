\name{geeUOmega}
\alias{geeUOmega}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ Modified gee function to output extra objects for saws }
\description{
This function is normally not to be called directly, but one should usually use \code{\link{mgee}} (see warning below).


This function takes output from the \code{\link[gee]{gee}}  function from the \code{gee} package and creates a score matrix 
(i.e., estimating equation) and information array (i.e., minus the derivative of the estimating equation).
Note the function creates the X matrix assuming the data set is the same as it was for the original call to gee, see Warning section.
}
\usage{
geeUOmega(geeOutput)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{geeOutput}{object of class gee, output from gee function}
}
%\details{  ~~ If necessary, more details than the description above ~~}
\value{ 
A gee object with two extra elements to the list, u and omega (see \code{\link{saws}}).
}
%\references{ ~put references to the literature/web site here ~ }
\author{ M.P. Fay, with some lines copied from \code{\link[gee]{gee}} function }
\note{The function recalculates the fitted.values and the residuals to the gee object, since in gee (version 4.13-18 at least)
 the fited.values and residuals can be wrong if there is an offset or if y is a matrix (as in the binomial model).}
\section{Warning}{It is safer to use the \code{\link{mgee}} function, which internally calls \code{gee} then \code{geeUOmega}. If you do not use \code{mgee},
and instead call \code{geeUOmega} directly, 
there could be a problem if the data set has been changed after the initial \code{gee} call. This is 
because the model matrix (i.e., the X matrix) is not saved as part of the gee object, we must recreate it from the gee call. So it is created assuming that the 
data argument in gee means the same thing that it did when gee was called. So if you change the data set between the original gee call and using the geeUOmega function, there may be problems. }
\seealso{\code{\link[gee]{gee}},\code{\link{mgee}}}
\examples{
##  example from gee help
data(warpbreaks)
geeout<-gee(breaks~tension,id=wool,data=warpbreaks,corstr="exchangeable")
guo<-geeUOmega(geeout)
saws(guo)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{nonlinear}
%\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
