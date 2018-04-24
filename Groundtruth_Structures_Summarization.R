# Read in csv files

# Path to file containing potential structure data
strct.gt.data <- "E:/Documents/Ground_Truthing_Summarization/Upper Yaquina River Structure Groundtruth (Responses) - 20180315.csv"

# Read the .csv file 
gt.data <- read.csv(strct.gt.data, header = TRUE)


# Add column named "Group" to response data frame 
gt.data["Group"] 

# Designate the group of each response using the conditions in Table 1 (in word document)
gt.data$Group <- ifelse(gt.data$Is.at.least.one.structure.visible.on.imagery.within.100.feet.current.potential.structure..no...go.to.bottom.of.page.and.submit.form. == "Yes", "E", "NA")  
gt.data$Group <- ifelse(gt.data[,4] == "No" & gt.data[,5] == "No" & gt.data[,6] == "No" & gt.data[,8] == "No", "A", 
                 ifelse(gt.data[,4] == "No" & gt.data[,5] == "No" & gt.data[,6] == "No" & gt.data[,8] == "Yes", "B", 
                 ifelse(gt.data[,4] == "Yes", "C", 
                 ifelse(gt.data[,5] == "Yes", "D", 
                 ifelse(gt.data[,6] == "Yes", "E", "NA")))))    


# Create summary table for each group that has counts of structures in each group by Column B (Reviewer)


# Save the response and summary data frames to a file (or files)






# Column Names
colnames(gt.data)




