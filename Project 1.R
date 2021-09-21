#' 1. Provide the steps to load the dataset into R and display the 
#' first 6 rows. Also, display the columns and their descriptions (10 points)
#' File name: bank-full.csv

df <- read.csv(file = '/Users/victortu/Desktop/ BUS 461/BUS-461A/Csv files/bank-full.csv', sep = ";" )
head(df)

colnames(df)
