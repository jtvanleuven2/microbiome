library(microbiome)
library(phyloseq)
library(netresponse)
library(MASS)
library(dplyr)
library(tidyr)
library(ggplot2)
library(sorvi)
library(limma)
library(devtools)
library(GGally)
library(ggnet)
library(network)
library(sna)
library(ggplot2)
library(intergraph) # ggnet2 works also with igraph with this

#library(rmarkdown)
#rmarkdown::render("vignette.Rmd")
#rmarkdown::render("Template.Rmd")
#rmarkdown::render("Atlas.Rmd", "all")

#render("vignette.Rmd", "html_document")
#rmarkdown::render("vignette.Rmd", "all")
library(knitr)
library(knitcitations)
#knit("vignette.Rmd")
#library(knitr)
#knit("Atlas.Rmd")

# ---------------------------------------------

library(knitr)
#fs <- "Density.Rmd"
#fs <- "Diversity.Rmd"
#fs <- "Heatmap.Rmd"
#fs <- "Profiling.Rmd"
#fs <- "RDA.Rmd"
#fs <- "SQL.Rmd"
#fs <- "vignette.Rmd"
fs <- sample(list.files(pattern = ".Rmd$"))
knitr::opts_chunk$set(fig.path = "figure/", dev="CairoPNG")
for (f in fs) {
    print(f)
    knit(f) 
    #rmarkdown::render(f, "md_document")
}

system("git add *.md")
system("git add figure/*")
system("git add *.Rmd")
system("git commit -a -m'markdown update'")
system("git push")


