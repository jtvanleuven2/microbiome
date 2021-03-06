% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plot_crosshyb.R
\name{plot_crosshyb}
\alias{plot_crosshyb}
\title{Plot cross-hyb table}
\usage{
plot_crosshyb(tax.level = "L1", selected.taxa = NULL, show.plot = TRUE,
  order.rows = TRUE, order.cols = TRUE, keep.empty = FALSE,
  rounding = 1, tax.table = NULL, self.correlations = FALSE)
}
\arguments{
\item{tax.level}{Taxonomic level to investigate}

\item{selected.taxa}{Restrict cross-hyb analysis to the selected groups.}

\item{show.plot}{Produce the plot}

\item{order.rows}{Order table rows}

\item{order.cols}{Order table columns}

\item{keep.empty}{Keep taxa that do not show any cross-hybridization}

\item{rounding}{Rounding of the cell contents}

\item{tax.table}{tax.table}

\item{self.correlations}{Show self-correlations (always 100 percent); 
or remove (indicate as 0 percent; default)}
}
\value{
A list containing cross-hybridization table and plot
}
\description{
Cross-hybridization between multimodal taxa as percentages of shared probes. The number indicates how many percent of oligos for the row taxon are also hybridizing the corresponding column taxon.
}
\examples{
  \dontrun{res <- plot_crosshyb(tax.level = 'L2', rounding = 1, show.plot = FALSE)}
}
\author{
Contact: Leo Lahti \email{microbiome-admin@googlegroups.com}
}
\references{
See citation('microbiome')
}
\keyword{utilities}

