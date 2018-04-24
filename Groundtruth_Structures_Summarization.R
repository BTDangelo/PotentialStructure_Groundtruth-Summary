# Read in csv files

# Path to file containing potential structure data
strct.gt.data <- "E:/Documents/Ground_Truthing_Summarization/Upper Yaquina River Structure Groundtruth (Responses) - 20180315.csv"


# Read the .csv file 
str.gt.data <- read.csv(strct.gt.data, header = TRUE)


# Add column named "Group" to response data frame 
#str.gt.data["Group"] 


# Column Names
colnames(str.gt.data)



# Designate the group of each response using the conditions in Table 1 (in word document)

str.gt.data$Group <- ifelse(str.gt.data[,4] == "No" & str.gt.data[,5] == "No" & str.gt.data[,6] == "No" & str.gt.data[,8] == "No", "A", 
                     ifelse(str.gt.data[,4] == "No" & str.gt.data[,5] == "No" & str.gt.data[,6] == "No" & str.gt.data[,8] == "Yes", "B", 
                     ifelse(str.gt.data[,4] == "Yes", "C", 
                     ifelse(str.gt.data[,5] == "Yes", "D", 
                     ifelse(str.gt.data[,6] == "Yes", "E", "NA")))))    



# Create summary table for each group that has counts of structures in each group by Column B (Reviewer)

tapply(str.gt.data[,2], str.gt.data$Group, summary)


# Table1 <- aggregate.data.frame(gt.data[,2], list(gt.data$Group), FUN=summary)

# Save the response and summary data frames to a file (or files)
write.csv(str.gt.data, "E:/Documents/Ground_Truthing_Summarization/Upper_Yaquina_River_Structure_Groundtruth_Response_BTD.csv")




