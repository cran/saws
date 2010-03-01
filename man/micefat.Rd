\name{micefat}
\alias{micefat}
\docType{data}
\title{Dietary fat and Mammary tumors in Mice}
\description{Data from meta analysis of mice bred for spontaneous tumors and their response to different diets. 
The sources for the data are from the literature and listed in Freedman et al (1990).}
\usage{data(micefat)}
\format{
  A data frame with 57 observations on the following 5 variables.
  \describe{
    \item{\code{NTUM}}{number of mice in group with any mammary tumor}
    \item{\code{N}}{number of mice in group}
    \item{\code{fatCal}}{fat calories per day (kcal)}
    \item{\code{totalCal}}{total calcories per day (kcal)}
    \item{\code{cluster}}{different experiments}
  }
}
%\details{ ~~ If necessary, more details than the __description__ above ~~}
\source{Freedman, LS, Clifford, C, and Messina, M (1990). Cancer Research 50: 5710-5719.}
%\references{
%Fay, MP, Freedman, LS, Clifford, CK, Midthune, DN. (1997) Cancer Research 57: 3979-3988.
%Fay, MP, Graubard, BI. (2001) Biometrics 57: 1198-1206.}
\examples{
data(micefat)
head(micefat)
}
\keyword{datasets}
