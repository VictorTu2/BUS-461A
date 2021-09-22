#' 1. Provide the steps to load the dataset into R and display the 
#' first 6 rows. Also, display the columns and their descriptions (10 points)
#' File name: bank-full.csv

bank_full <- read.csv(file = '/Users/victortu/Desktop/ BUS 461/BUS-461A/Csv files/bank-full.csv', sep = ";" )
head(bank_full)

colnames(bank_full)

#Question 2 

targetCustomers <- function(df, job, housing, education, minThreshold = 2)
{
  df <- df[(df$job == job & df$housing == housing & df$education == education &
                   df$campaign >= minThreshold & df$y == "no"),]
  return(df)
}

customersdf <- targetCustomers(bank_full, 'admin.', 'yes', "secondary")
print(nrow(customersdf))

#Question 3 

targetCustomersV1 <- function (df, criteria1, criteria2, criteria3, minThreshold = 2)
{
  df <- df[(df[criteria1$param1] == criteria1$param2 & df[criteria2$param1] == criteria2$param2 & df[criteria3$param1] == criteria3$param2 &
              df$campaign >= minThreshold & df$y == "no"),]
  return(df)
}

customersdfV1 <- targetCustomersV1(bank_full, 
                                   criteria1 = list(param1 = "job", param2 = "management"),
                                   criteria2 = list(param1 = "marital", param2 = "married"),
                                   criteria3 = list(param1 = "education", param2 ="secondary"))