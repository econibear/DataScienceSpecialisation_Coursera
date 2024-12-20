
#Assignment 1: Air Pollution



directory1 = "~/Documents/Coursera_DataScienceSpecialisation/Assignments/2_RProgramming_ProgrammingAssignment1/specdata/"

pollutantmean <- function(directory, pollutant, id=1:332) {

  file_list = list.files(directory, pattern=".csv", full.names = TRUE)

  df = data.frame()
  subset_data = file_list[id]

  for (i in id) {
    df = read.csv(subset_data[i])
  }
  
  pollutant_data <- df[[pollutant]]
  x <- mean(pollutant_data, na.rm=TRUE)
  x

}

pollutantmean(directory1, "sulfate", 1:10)



