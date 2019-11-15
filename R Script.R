rm(list=ls(all=TRUE))
cat("\014")

if (!require("data.table")) install.packages("data.table")
library("data.table")

header <- read.table("DEXUSEU.csv", header = TRUE,
                     sep=",", nrow = 1)
DEXUSEU <- fread("DEXUSEU.csv",
                                 skip=1, sep=",",header=FALSE,
                                 data.table=FALSE)
setnames(DEXUSEU, colnames(header))
rm(header)
