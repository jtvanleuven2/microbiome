% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plot_composition.R
\name{plot_composition}
\alias{plot_composition}
\title{Taxonomic Composition Plot}
\usage{
plot_composition(x, taxonomic.level = "OTU", sample.sort = NULL,
  otu.sort = NULL, x.label = "sample", plot.type = "barplot",
  verbose = FALSE, transformation = NULL, mar = c(5, 12, 1, 1),
  average_by = NULL, ...)
}
\arguments{
\item{x}{\code{\link{phyloseq-class}} object}

\item{taxonomic.level}{Merge the OTUs (for phyloseq object) into a higher taxonomic level. This has to be one from colnames(tax_table(x)).}

\item{sample.sort}{Order samples. Various criteria are available:
\itemize{
  \item NULL or 'none': No sorting
  \item A single character string: indicate the metadata field to be used for ordering
  \item A character vector: sample IDs indicating the sample ordering.
  \item 'neatmap' Order samples based on the neatmap approach. See \code{\link{order_neatmap}}. By default, 'NMDS' method with 'bray' distance is used. For other options, arrange the samples manually with the function.
}}

\item{otu.sort}{Order taxa. Same options as for the sample.sort argument but instead of metadata, taxonomic table is used. Also possible to sort by 'abundance'.}

\item{x.label}{Specify how to label the x axis. This should be one of the variables in sample_variables(x).}

\item{plot.type}{Plot type: 'barplot' or 'heatmap'}

\item{verbose}{verbose}

\item{transformation}{Data transformation to be used in plotting (but not in sample/taxon ordering). The options are 'Z-OTU', 'Z-Sample', 'log10' and 'relative.abundance'. See the \code{\link{transform_phyloseq}} function.}

\item{mar}{Figure margins}

\item{average_by}{Average the sample by the average_by variable}

\item{...}{Arguments to be passed (for \code{\link{order_neatmap}} function)}
}
\value{
A \code{\link{ggplot}} plot object.
}
\description{
Plot taxon abundance for samples.
}
\examples{
\dontrun{
  # Example data
    library(microbiome)
    data("dietswap")
    pseq <- subset_samples(dietswap, group == "DI" & nationality == "AFR")
    plot_composition(pseq, taxonomic.level = "Phylum")
          }
}
\keyword{utilities}

