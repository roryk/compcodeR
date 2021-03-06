\name{baySeq.createRmd}
\alias{baySeq.createRmd}
\title{Generate a \code{.Rmd} file containing code to perform differential expression analysis with baySeq}
\usage{
baySeq.createRmd(data.path, result.path, codefile, norm.method, distr.choice,
  equaldisp, sample.size = 5000, estimation = "QL", pET = "BIC")
}
\arguments{
  \item{data.path}{The path to a .rds file containing the
  \code{compData} object that will be used for the
  differential expression analysis.}

  \item{result.path}{The path to the file where the result
  object will be saved.}

  \item{codefile}{The path to the file where the code will
  be written.}

  \item{norm.method}{The between-sample normalization
  method used to compensate for varying library sizes and
  composition in the differential expression analysis.
  Possible values are \code{"quantile"}, \code{"total"} and
  \code{"edgeR"}.}

  \item{distr.choice}{The choice of underlying distribution
  assumption for the observed counts. Possible values are
  \code{"NB"}, \code{"Poisson"} and \code{"Dirichlet"}.}

  \item{equaldisp}{Logical parameter indicating whether or
  not equal dispersion should be assumed across all
  conditions.}

  \item{sample.size}{The size of the sample used to
  estimate the priors (default 5000).}

  \item{estimation}{The approach used to estimate the
  priors. Possible values are \code{"QL"} (default),
  \code{"ML"} and \code{"edgeR"}.}

  \item{pET}{The method used to re-estimate the priors.
  Possible values are \code{"BIC"} (default), \code{"none"}
  and \code{"iteratively"}.}
}
\value{
The function generates a \code{.Rmd} file containing the
code for performing the differential expression analysis.
This file can be executed using e.g. the \code{knitr}
package.
}
\description{
A function to generate code that can be run to perform
differential expression analysis of RNAseq data (comparing
two conditions) using the \code{baySeq} package. The code
is written to a \code{.Rmd} file. This function is
generally not called by the user, the main interface for
performing differential expression analysis is the
\code{\link{runDiffExp}} function.
}
\details{
For more information about the methods and the
interpretation of the parameters, see the \code{baySeq}
package and the corresponding publications.
}
\examples{
try(
if (require(baySeq)) {
tmpdir <- normalizePath(tempdir(), winslash = "/")
mydata.obj <- generateSyntheticData(dataset = "mydata", n.vars = 1000,
                                    samples.per.cond = 5, n.diffexp = 100,
                                    output.file = file.path(tmpdir, "mydata.rds"))
## Note! In the interest of speed, we set sample.size=10 in this example.
## In a real analysis, much larger sample sizes are recommended (the default is 5000).
runDiffExp(data.file = file.path(tmpdir, "mydata.rds"), result.extent = "baySeq",
           Rmdfunction = "baySeq.createRmd",
           output.directory = tmpdir, norm.method = "edgeR",
           distr.choice = "NB", equaldisp = TRUE,
           sample.size = 10)
})
}
\author{
Charlotte Soneson
}
\references{
Hardcastle TJ (2012): baySeq: Empirical Bayesian analysis
of patterns of differential expression in count data. R
package

Hardcastle TJ and Kelly KA (2010): baySeq: Empirical
Bayesian methods for identifying differential expression in
sequence count data. BMC Bioinformatics 11:422
}

