% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ChemicalCuration.R
\name{getPcCand.ExactMass}
\alias{getPcCand.ExactMass}
\title{Retrieve CID Count or CID list by Exact Mass from PubChem}
\usage{
getPcCand.ExactMass(ExactMass, ppm=5, CountOnly=TRUE, RetMax=20, sortAsc=TRUE, timeout=10)
}
\arguments{
\item{ExactMass}{Exact mass to search}

\item{ppm}{Mass error (ppm, not Da) to search. Default \code{5}, adds to both 
sides of ExactMass.}

\item{CountOnly}{Default \code{TRUE} returns a count of the CIDs, \code{FALSE}
returns a list of CIDs of length \code{RetMax}.}

\item{RetMax}{Number of CIDs to return. Default \code{20} is the eUtils default. 
For large queries this needs to be set much larger; \code{timeout} may need adjusting.}

\item{sortAsc}{Default \code{TRUE} returns CID lists sorted in ascending order 
(lowest CID first), \code{FALSE} reverts to the eUtils default of highest CID first.}

\item{timeout}{The timeout, in seconds.}
}
\value{
Either a count of CIDs or a vector of CIDs (\code{NA} if error).
}
\description{
Retrieves a count of CIDs or CID list from PubChem using entrez/eUtils .
Default behaviour is to retrieve CID count only, or a short CID list 
in ascending order. RMassBank is used to calculate the ppm range. 
Thanks to Paul Thiessen and Evan Bolton from PubChem team for assistance.
}
\examples{
getPcCand.ExactMass(298.095947)
getPcCand.ExactMass(298.095947,5,CountOnly=F)
getPcCand.ExactMass(298.095947,5,CountOnly=F,sortAsc=F)
getPcCand.ExactMass(298.095947,5,CountOnly=F,sortAsc=T,RetMax=10)
# invalid mass entries will return an error in the mass calc
getPcCand.ExactMass("298.095947")

}
\references{
PubChem search: \url{http://pubchem.ncbi.nlm.nih.gov/} 

Entrez eUtils: 
\url{https://www.ncbi.nlm.nih.gov/books/NBK25500/} and 
\url{https://www.ncbi.nlm.nih.gov/books/NBK25499/}
}
\author{
Emma Schymanski <emma.schymanski@uni.lu>
}
