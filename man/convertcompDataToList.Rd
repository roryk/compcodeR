\name{convertcompDataToList}
\alias{convertcompDataToList}
\title{Convert a \code{compData} object to a list}
\usage{
convertcompDataToList(cpd)
}
\arguments{
  \item{cpd}{A \code{compData} object}
}
\description{
Given a \code{compData} object, convert it to a list.
}
\examples{
mydata.obj <- generateSyntheticData(dataset = "mydata", n.vars = 12500,
                                    samples.per.cond = 5, n.diffexp = 1250)
mydata.list <- convertcompDataToList(mydata.obj)
}
\author{
Charlotte Soneson
}

