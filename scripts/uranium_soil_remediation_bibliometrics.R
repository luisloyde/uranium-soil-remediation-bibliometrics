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

#Bibliographic networks
#Authors co-citation
NetMatrix_citation_cc <- biblioNetwork(data, analysis = "co-citation", network = "authors", sep = ";")
co_citation=networkPlot(NetMatrix_citation_cc, normalize="association", weighted=NULL, n = 60, Title = "Authors co-citation", type = "fruchterman", size=T,edgesize = 5,labelsize=0.7)

#Keyword co-occurrences
NetMatrix_keyword_co <- biblioNetwork(data, analysis = "co-occurrences", network = "keywords", sep = ";")
keyword_co=networkPlot(NetMatrix_keyword_co, normalize="association", weighted=NULL, n=45, Title = "Keyword Co-occurrences", type = "fruchterman", size=T,edgesize = 5,labelsize=0.7)


