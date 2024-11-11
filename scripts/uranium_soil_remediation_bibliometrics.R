library(bibliometrix)
library(rprojroot)

rm(list = ls())
graphics.off()

setwd(find_rstudio_root_file())
data <- convert2df("data/database1.bib", dbsource = "scopus", format = "bibtex")

result <- biblioAnalysis(data)
summary(result)

colnames(data)[colnames(data) == "AU"] <- "CR_AU" #incorrect

plot(x = result)

CS <- conceptualStructure(data,field="ID", method="CA", minDegree=4, clust=5, stemming=FALSE, labelsize=10, documents=10)

# Create keyword co-occurrences network
NetMatrix_keyword <- biblioNetwork(data, analysis = "co-occurrences", network = "keywords", sep = ";")
keyword_co=networkPlot(NetMatrix_keyword, normalize="association", weighted=NULL, n=45, Title = "Keyword Co-occurrences", type = "fruchterman", size=T,edgesize = 5,labelsize=0.7)

NetMatrix_citation <- biblioNetwork(data, analysis = "co-citation", network = "authors", sep = ";")
co_citation=networkPlot(NetMatrix_citation, normalize="association", weighted=NULL, n = 60, Title = "Authors co-citation", type = "fruchterman", size=T,edgesize = 5,labelsize=0.7)

NetMatrix_source <- biblioNetwork(data, analysis = "co-citation", network = "sources", sep = ";")
co_citation=networkPlot(NetMatrix_source, normalize="association", weighted=NULL, n = 60, Title = "Source co-citation", type = "fruchterman", size=T,edgesize = 5,labelsize=0.7)

#co_citation_authors <- biblioNetwork(data, analysis = "co-citation", network = "authors")
#networkPlot(coauthorship, n = 30, type = "fruchterman", size = 5)

#co_citation_references <- biblioNetwork(data, analysis = "co-citation", network = "references")
#networkPlot(coauthorship, n = 30, type = "fruchterman", size = 5)

