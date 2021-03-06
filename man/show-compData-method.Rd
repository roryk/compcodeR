\docType{methods}
\name{show,compData-method}
\alias{show,compData-method}
\title{Show method for \code{compData} object}
\usage{
\S4method{show}{compData}(object)
}
\arguments{
  \item{object}{A \code{compData} object}
}
\description{
Show method for \code{compData} object.
}
\examples{
mydata <- generateSyntheticData(dataset = "mydata", n.vars = 12500,
                                samples.per.cond = 5, n.diffexp = 1250)
mydata
}
\author{
Charlotte Soneson
}

