% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/bagged_rda.R
\name{bagged_rda}
\alias{bagged_rda}
\title{Bagged RDA}
\usage{
bagged_rda(x, y, sig.thresh = 0.1, nboot = 1000, verbose = T,
  plot = FALSE)
}
\arguments{
\item{x}{a matrix, samples on columns, variables (bacteria) on rows. 
Or a \code{\link{phyloseq-class}} object}

\item{y}{vector with names(y)=rownames(X). 
Or name of phyloseq sample data variable name
(one of sample_variables(x)).}

\item{sig.thresh}{signal p-value threshold, default 0.1}

\item{nboot}{Number of bootstrap iterations}

\item{verbose}{verbose}

\item{plot}{Also show a diagnostic plot of the result}
}
\value{
List with items:
  \itemize{
    \item{loadings}{bagged loadings}
    \item{scores}{bagged scores}
    \item{significance}{significances of X variables}
    \item{group.centers}{group centers on latent space}
    \item{bootstrapped}{bootstrapped loadings}
    \item{data}{data set with non-significant components dropped out}
  }
}
\description{
Bagged (or Bootstrap Aggregated) RDA feature selection
}
\details{
Bootstrap aggregation (bagging) is expected to improve the stability of the results. Aggregating results over several modeling runs with different boostrap samples of the data are averaged to produce the final summary.
}
\examples{
\dontrun{
  library(microbiome)

  # Example with abundance matrix
  data(peerj32)
  phy <- peerj32$phyloseq
  x <- taxa_abundances(phy) 
  y <- factor(sample_data(phy)$gender);
  names(y) <- rownames(sample_data(phy))
  res <- bagged_rda(x, y, sig.thresh=0.05, nboot=20)
  plot_bagged_rda(res, y)

  # Example with phyloseq object
  res <- bagged_rda(phy, "gender", sig.thresh=0.05, nboot=20)
  plot_bagged_rda(res, y)

 }
}
\author{
Jarkko Salojarvi \email{microbiome-admin@googlegroups.com}
}
\references{
See citation("microbiome")
}
\keyword{utilities}

