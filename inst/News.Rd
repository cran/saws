\name{NEWS}
\title{NEWS file for the saws package}
\section{Changes in version 0.9-5.3}{
  \itemize{
    \item Changed print.saws file. It had an error when the test matrix was not p X p (where p=number of coefficients).
\item Removed dependence on survival. I hope to put adjustment for Cox proportional hazards in the future, but have not done it yet, so there is no dependence.
    }}

    \section{Changes in version 0.9-3.3}{
  \itemize{
    \item  fix bug when the number of parameters is 1 (see dfCalc.R).
}}