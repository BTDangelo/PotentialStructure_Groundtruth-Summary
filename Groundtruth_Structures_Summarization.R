# Read in csv files

# Path to file containing potential structure data
strct.gt.data <- "E:/Documents/Ground_Truthing_Summarization/Upper Yaquina River Structure Groundtruth (Responses) - 20180315.csv"

# Read the .csv file 
gt.data <- read.csv(strct.gt.data, header = TRUE)

# Add column named "Group" to response data frame 
# Designate the group of each response using the conditions in Table 1 (in word document)
