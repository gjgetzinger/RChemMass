% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ChemicalCuration.R
\name{getPCproperty.MF}
\alias{getPCproperty.MF}
\title{Retrieve Property Information from PubChem}
\usage{
getPCproperty.MF(query, from = "cid", timeout=10)
}
\arguments{
\item{query}{string of the identifier (CID, InChIKey) to be converted}

\item{from}{Type of input ID (default \code{"cid"}, i.e. PubChem Compound ID, 
alternative \code{"inchikey"} to retrieve via InChIKey, or others (untried)).}

\item{timeout}{The timeout, in seconds.}
}
\value{
A list containing the related property information
}
\description{
Retrieves property data for MetFrag from PubChem using PUG REST.
Default behaviour is to retrieve by CID or InChIKey. Properties
returned are MolecularFormula, IsomericSMILES, InChI, InChIKey,
IUPACName and MonoisotopicMass
}
\details{
For this function to work as expected, only one search entry should be
used (e.g. one CID or InChIKey). The URL can accept comma separated CIDs, 
but this is currently ignored downstream. 
Thanks to Paul Thiessen and Evan Bolton from PubChem team for assistance.
}
\examples{
getPCproperty.MF("22206")
getPCproperty.MF("FZXISNSWEXTPMF-UHFFFAOYSA-N",from="inchikey")
getPCproperty.MF("2244")
#a non-live record 
getPCproperty.MF("4644")

}
\references{
PubChem search: \url{http://pubchem.ncbi.nlm.nih.gov/} 

PubChem PUG REST:
\url{https://pubchemdocs.ncbi.nlm.nih.gov/pug-rest}
}
\author{
Emma Schymanski <emma.schymanski@uni.lu>
}
