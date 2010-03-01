\name{mgee}
\alias{mgee}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{ Modified gee function to output extra objects for saws }
\description{
This is just the \code{\link[gee]{gee}}  function from the \code{gee} package
with extra lines added at the end to create a score matrix 
(i.e., estimating equation) and information array (i.e., minus the derivative of the estimating equation).
Since the code is the same (except the additional lines) all help for \code{\link[gee]{gee}} applies to \code{mgee}.
}
\usage{
mgee(formula = formula(data), id = id, data = parent.frame(), subset, na.action, R = NULL, b = NULL, tol = 0.001, maxiter = 25, family = gaussian, corstr = "independence", Mv = 1, silent = TRUE, contrasts = NULL, scale.fix = FALSE, scale.value = 1, v4.4compat = FALSE)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{formula}{ see gee help}
  \item{id}{ see gee help}
  \item{data}{ see gee help}
  \item{subset}{see gee help}
  \item{na.action}{ see gee help}
  \item{R}{ see gee help}
  \item{b}{ see gee help}
  \item{tol}{ see gee help}
  \item{maxiter}{see gee help}
  \item{family}{ see gee help}
  \item{corstr}{ see gee help}
  \item{Mv}{ see gee help}
  \item{silent}{see gee help}
  \item{contrasts}{see gee help}
  \item{scale.fix}{ see gee help}
  \item{scale.value}{ see gee help}
  \item{v4.4compat}{ see gee help}
}
%\details{  ~~ If necessary, more details than the description above ~~}
\value{ 
A gee object with two extra elements to the list, u and omega (see \code{\link{saws}}).
}
%\references{ ~put references to the literature/web site here ~ }
\author{ last few lines by M.P. Fay, for the rest see \code{\link[gee]{gee}} package DESCRIPTION }
%\note{ ~~further notes~~  ~Make other sections like Warning with \section{Warning }{....} ~}
\seealso{\code{\link[gee]{gee}}}
\examples{
##  example from gee help
data(warpbreaks)
mout<-mgee(breaks~tension,id=wool,data=warpbreaks,corstr="exchangeable")
saws(mout)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{nonlinear}
%\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
