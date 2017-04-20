setwd("/Users/jimblotter/Desktop/Grad_School/Data_Analysis/barcodes_pre_analysis")
barcodes_file <- read.csv("barcodes.csv")  # read csv file 
barcodes <- data.frame(barcodes_file)
barcodes[1,1]
nrow(barcodes) #565
ncol(barcodes) #2
barcodes["Sample"]     #or barcodes$Sample, displays columns
barcodes["003-15",]    #returns NAs
barcodes[["GH8", exact = TRUE]]   #returns NULL

for (i in barcodes$Sample) {
  if (i == "003-15") {
    return (barcodes[003-15,])
  }
}

psuedocode:
if the value in the (sample) column starts with 003,
return the corresponding calue in the (barcode) column

maybe if the value in the sample column sarts with 003,
get what row it is and return the row?