\name{DESeq.nbinom.createRmd}
\alias{DESeq.nbinom.createRmd}
\title{Generate a \code{.Rmd} file containing code to perform differential expression analysis with the DESeq nbinom approach}
\usage{
DESeq.nbinom.createRmd(data.path, result.path, codefile, sharing.mode,
  disp.method, fit.type)
}
\arguments{
  \item{data.path}{The path to a .rds file containing the
  \code{compData} object that will be used for the
  differential expression analysis.}

  \item{result.path}{The path to the file where the result
  object will be saved.}

  \item{codefile}{The path to the file where the code will
  be written.}

  \item{sharing.mode}{The method used to select between the
  individually estimated dispersion and the dispersion
  estimate obtained by fitting a dispersion-mean
  relationship to the estimated values for all genes.
  Possible values are \code{"fit-only"} (use the fitted
  value), \code{"maximum"} (take the maximum of the fitted
  and the estimated value) and \code{"gene-est-only"} (use
  the estimated value).}

  \item{disp.method}{The method used to estimate the
  dispersion. Possible values are \code{"pooled"},
  \code{"per-condition"} and \code{"blind"}.}

  \item{fit.type}{The fitting method used to get the
  dispersion-mean relationship. Possible values are
  \code{"parametric"} and \code{"local"}.}
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
two conditions) using the nbinom test from the DESeq
package. The code is written to a \code{.Rmd} file. This
function is generally not called by the user, the main
interface for performing differential expression analysis
is the \code{\link{runDiffExp}} function.
}
\details{
For more information about the methods and the
interpretation of the parameters, see the \code{DESeq}
package and the corresponding publications.
}
\examples{
try(
if (require(DESeq)) {
tmpdir <- normalizePath(tempdir(), winslash = "/")
mydata.obj <- generateSyntheticData(dataset = "mydata", n.vars = 1000,
                                    samples.per.cond = 5, n.diffexp = 100,
                                    output.file = file.path(tmpdir, "mydata.rds"))
runDiffExp(data.file = file.path(tmpdir, "mydata.rds"), result.extent = "DESeq.nbinom",
           Rmdfunction = "DESeq.nbinom.createRmd",
           output.directory = tmpdir, sharing.mode = "maximum",
           disp.method = "pooled", fit.type = "parametric")
})
}
\author{
Charlotte Soneson
}
\references{
Anders S and Huber W (2010): Differential expression
analysis for sequence count data. Genome Biology 11:R106
}

