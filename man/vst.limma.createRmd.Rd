\name{vst.limma.createRmd}
\alias{vst.limma.createRmd}
\title{Generate a \code{.Rmd} file containing code to perform differential expression analysis with limma after the variance-stabilizing transformation provided in DESeq}
\usage{
vst.limma.createRmd(data.path, result.path, codefile, fit.type)
}
\arguments{
  \item{data.path}{The path to a .rds file containing the
  \code{compData} object that will be used for the
  differential expression analysis.}

  \item{result.path}{The path to the file where the result
  object will be saved.}

  \item{codefile}{The path to the file where the code will
  be written.}

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
differential expression analysis of RNAseq (comparing two
conditions) by applying the variance-stabilizing
transformation of the \code{DESeq} package followed by
differential expression analysis using \code{limma}. The
code is written to a \code{.Rmd} file. This function is
generally not called by the user, the main interface for
performing differential expression analysis is the
\code{\link{runDiffExp}} function.
}
\details{
For more information about the methods and the
interpretation of the parameters, see the \code{limma} and
\code{DESeq} packages and the corresponding publications.
}
\examples{
try(
if (require(DESeq)) {
tmpdir <- normalizePath(tempdir(), winslash = "/")
mydata.obj <- generateSyntheticData(dataset = "mydata", n.vars = 1000,
                                    samples.per.cond = 5, n.diffexp = 100,
                                    output.file = file.path(tmpdir, "mydata.rds"))
runDiffExp(data.file = file.path(tmpdir, "mydata.rds"), result.extent = "vst.limma",
           Rmdfunction = "vst.limma.createRmd",
           output.directory = tmpdir, fit.type = "parametric")
})
}
\author{
Charlotte Soneson
}
\references{
Smyth GK (2005): Limma: linear models for microarray data.
In: 'Bioinformatics and Computational Biology Solutions
using R and Bioconductor'. R. Gentleman, V. Carey, S.
Dudoit, R. Irizarry, W. Huber (eds), Springer, New York,
pages 397-420

Anders S and Huber W (2010): Differential expression
analysis for sequence count data. Genome Biology 11:R106
}

