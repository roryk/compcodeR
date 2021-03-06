\docType{class}
\name{compData-class}
\alias{compData-class}
\title{Class compData}
\description{
The \code{compData} class is used to store information
about the experiment, such as the count matrix, sample and
variable annotations, information regarding the generation
of the data and results from applying a differential
expression analysis to the data.
}
\section{Slots}{
  \describe{ \item{\code{count.matrix}:}{The read count
  matrix, with genes as rows and samples as columns.  Class
  \code{matrix}} \item{\code{sample.annotations}:}{A data
  frame containing sample annotation information for all
  samples in the data set. Must contain at least a column
  named \code{condition}, encoding the division of the
  samples into two classes. The row names should be the
  same as the column names of \code{count.matrix}. Class
  \code{data.frame}} \item{\code{info.parameters}:}{A list
  of parameters detailing the simulation process used to
  generate the data. Must contain at least two entries,
  named \code{dataset} (an informative name for the data
  set/simulation setting) and \code{uID} (a unique ID for
  the specific data set instance). Class \code{list}}
  \item{\code{filtering}:}{A character string detailing the
  filtering process that has been applied to the data.
  Class \code{character}}
  \item{\code{variable.annotations}:}{Contains information
  regarding the variables, such as the differential
  expression status, the true mean, dispersion and effect
  sizes. If present, the row names should be the same as
  those of \code{count.matrix}. Class \code{data.frame}}
  \item{\code{analysis.date}:}{(If a differential
  expression analysis has been performed and the results
  are included in the \code{compData} object). Gives the
  date when the differential expression analysis was
  performed. Class \code{character}}
  \item{\code{package.version}:}{(If a differential
  expression analysis has been performed and the results
  are included in the \code{compData} object). Gives the
  version numbers of the package(s) used for the
  differential expression analysis. Class \code{character}}
  \item{\code{method.names}:}{(If a differential expression
  analysis has been performed and the results are included
  in the \code{compData} object). A list, containing the
  name of the method used for the differential expression
  analysis. The list should have two entries:
  \code{full.name} and \code{short.name}, where the
  \code{full.name} is the full (potentially long) name
  identifying the method, and \code{short.name} may be an
  abbreviation. Class \code{list}} \item{\code{code}:}{(If
  a differential expression analysis has been performed and
  the results are included in the \code{compData} object).
  A character string containing the code that was used to
  run the differential expression analysis. The code should
  be in R markdown format. Class \code{character}}
  \item{\code{result.table}:}{(If a differential expression
  analysis has been performed and the results are included
  in the \code{compData} object). Contains the results of
  the differential expression analysis, in the form of a
  data frame with one row per gene. Must contain at least
  one column named \code{score}, where a higher value
  corresponds to 'more strongly differentially expressed
  genes'. Class \code{data.frame}} }
}

\section{Methods}{
  \describe{
  \item{count.matrix}{\code{signature(x="compData")}}
  \item{count.matrix<-}{\code{signature(x="compData",value="matrix")}:
  Get or set the count matrix in a \code{compData} object.
  \code{value} should be a numeric matrix.}
  \item{sample.annotations}{\code{signature(x="compData")}}
  \item{sample.annotations<-}{\code{signature(x="compData",value="data.frame")}:
  Get or set the sample annotations data frame in a
  \code{compData} object. \code{value} should be a data
  frame with at least a column named 'condition'.}
  \item{info.parameters}{\code{signature(x="compData")}}
  \item{info.parameters<-}{\code{signature(x="compData",value="list")}:
  Get or set the list with info parameters in a
  \code{compData} object. \code{value} should be a list
  with at least elements named 'dataset' and 'uID'.}
  \item{filtering}{\code{signature(x="compData")}}
  \item{filtering<-}{\code{signature(x="compData",value="character")}:
  Get or set the information about the filtering in a
  \code{compData} object. \code{value} should be a
  character string describing the filtering that has been
  performed.}
  \item{variable.annotations}{\code{signature(x="compData")}}
  \item{variable.annotations<-}{\code{signature(x="compData",value="data.frame")}:
  Get or set the variable annotations data frame in a
  \code{compData} object. \code{value} should be a data
  frame.}
  \item{analysis.date}{\code{signature(x="compData")}}
  \item{analysis.date<-}{\code{signature(x="compData",value="character")}:
  Get or set the analysis date in a \code{compData} object.
  \code{value} should be a character string describing when
  the differential expression analysis of the data was
  performed.}
  \item{package.version}{\code{signature(x="compData")}}
  \item{package.version<-}{\code{signature(x="compData",value="character")}:
  Get or set the information about the package version in a
  \code{compData} object. \code{value} should be a
  character string detailing which packages and versions
  were used to perform the differential expression analysis
  of the data.}
  \item{method.names}{\code{signature(x="compData")}}
  \item{method.names<-}{\code{signature(x="compData",value="list")}:
  Get or set the method names in a \code{compData} object.
  \code{value} should be a list with slots \code{full.name}
  and \code{short.name}, giving the full name and an
  abbreviation for the method that was used to perform the
  analysis of the data.}
  \item{code}{\code{signature(x="compData")}}
  \item{code<-}{\code{signature(x="compData",value="character")}:
  Get or set the code slot in a \code{compData} object.
  \code{value} should be a character string in R markdown
  format, giving the code that was run to obtain the
  results from the differential expression analysis.}
  \item{result.table}{\code{signature(x="compData")}}
  \item{result.table<-}{\code{signature(x="compData",value="data.frame")}:
  Get or set the result table in a \code{compData} object.
  \code{value} should be a data frame with one row per
  gene, and at least a column named 'score'.} }
}

\section{Construction}{
  An object of the class \code{compData} can be constructed
  using the \code{\link{compData}} function.
}
\author{
Charlotte Soneson
}

