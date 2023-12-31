% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/results.R
\name{get_preprocessing}
\alias{get_preprocessing}
\title{Get information about the preprocessing and the input data}
\usage{
get_preprocessing(results)
}
\arguments{
\item{results}{an object of class 'JD3_SsfModelEstimation'}
}
\value{
a list
}
\description{
Get information about the preprocessing and the input data
}
\examples{
set.seed(100)
data<-ts(matrix(rnorm(500), 100, 5), frequency = 12, start = c(2010,1))
data[100,1]<-data[99:100,2]<-data[(1:100)[-seq(3,100,3)],5]<-NA
dfm_model <- model(nfactors=2,
                   nlags=2,
                   factors_type = c("M", "M", "YoY", "M", "Q"),
                   factors_loading = matrix(data=TRUE, 5, 2),
                   var_init = "Unconditional")
rslt_em<-estimate_em(dfm_model, data)
get_preprocessing(rslt_em)

}
