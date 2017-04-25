#test for Paul W

setwd("/Users/jimblotter/Desktop/Grad_School/Data_Analysis/barcodes_pre_analysis")
barcodes_file <- read.csv("barcodes.csv")  # read csv file 
barcodes <- data.frame(barcodes_file)

barcodes[1,1]
barcodes["Sample"]                            #or barcodes$Sample, displays columns
barcodes[15,]                                 #returns the 15th row

barcodes$Sample == "003-15" || "028-01"                  #this works, returning TRUE or FALSE, but not in a loop for some reason
barcodes[grep("003", barcodes$Samples), ]
grep("003-15", barcodes$Samples)

for (i in barcodes$Sample) {
  if (i == "003-15") {
    return (barcodes["003-15",])
  }
}

here is my psuedocode:
if the value in the (sample) column starts with 003,
return the corresponding calue in the (barcode) column

maybe if the value in the sample column sarts with 003,
get what row it is and return the row?