#question 1 
yearsOfExperience <- c(1.1,1.3,1.5,2.0,2.2,2.9,3.0,3.2,3.2,3.7,3.9,4.0,4.0,4.1,4.5,4.9,5.1,5.3,5.9,6.0,6.8,7.1,7.9,8.2,8.7,9.0,9.5,9.6,10.3,10.5)

annualSalary <- c(39343.00,46205.00,37731.00,43525.00,39891.00,56642.00,60150.00,54445.00,64445.00,57189.00,63218.00,55794.00,56957.00,57081.00,61111.00,67938.00,66029.00,83088.00,81363.00,93940.00,91738.00,98273.00,101302.00,113812.00,109431.00,105582.00,116969.00,112635.00,122391.00,121872.00)

#question 2 
#Screenshot is in the word document that is uploaded to Moodle 

#question 3 
typeof(yearsOfExperience)
typeof(annualSalary)

#question 4 
employees <- data.frame(yearsOfExperience, annualSalary)

#question 5 
perYearExperience <- annualSalary/yearsOfExperience
employees$perYearExperience = perYearExperience

#question 6
extractRows <- c(T,T,T,T,T,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F,F) 

#question 7
print(employees[extractRows,])
head(employees)

#question 8
filterCriteria <- c(1:30)

#question 9 
filterCriteria <- c(F,F,F,F,T,F,F,F,F,T,F,F,F,F,T,F,F,F,F,T,F,F,F,F,T,F,F,F,F,T)
print(filterCriteria)

#question 10
filteredEmployees <- employees[filterCriteria,]

#question 11 
head(filteredEmployees)

#question 12
filteredEmployees[filteredEmployees$yearsOfExperience == 2.2,]

#question 13 
install.packages("ggplot2")
library("ggplot2")
str(diamonds)

#question 14
head(diamonds,10)

#question 15 
goodDiamonds <- diamonds[diamonds$cut == "Good",]

#question 16
print(unique(diamonds['cut']))

#question 17

discountedPrice <- function (category, price) 
{
  if (category == "Fair") 
  {
    price <- price - 0.10*price 
    as.double(price)
  }
  else if (category == "Good")
  {
    price <- price - 0.15*price
    as.double(price)
  }
  else if (category == "Very Good")
  {
    price <- price -0.20*price 
    as.double(price)
  }
  else 
  { 
    price <- price - 0.25*price 
    as.double(price)
  }
}

diamonds$discountedPrice <- discountedPrice(diamonds$cut, diamonds$price)

#question 18
countDiamonds <- tapply(diamonds$cut, diamonds$cut, length)
countDiamonds

#question 19
filter1 <- subset(diamonds, cut == "Fair"|cut == "Good",)
filter2 <- subset(filter1, price <= 600)
View(filter2)

#question 20
dim(mtcars)

#question 21
mpg21 <- c(21.0)

#question 22
factorCyl <- factor(mtcars, levels = c("Four-Cyl", "Six-Cyl", "Eight-Cyl"))
factorCyl

#question 24

#question 25 
autoCars <- subset(mtcars, am == 1)
autoCars
manualCars <- subset(mtcars,am ==0)
manualCars
