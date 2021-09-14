#' 1. Provide the steps to load the dataset into R and display the 
#' first 6 rows. Also, display the columns and their descriptions (10 points)
#' File name: bank-full.csv

df <- read.csv(file = '/Users/victortu/Desktop/ BUS 461/BUS-461A/Csv files/bank-full.csv', sep = ";" )
head(df)

colnames(df)

# Q1. Develop a flow chart to strategize the customer contacts you could make to
# bring in more customers subscribing to a term deposit.
# The flow chart should include a threshold value of number of customers who 
# could take certain threshold of term deposits based on your intuition.
# Create a alternate strategy of flow, if the threshold is not met. 
# Submit this flow chart as a separate word document with the honors pledge on 
# first page (30 points)

install.packages("DiagrammeR")
library(DiagrammeR)

grViz(diagram = "digraph flowchart 
{
  node [fontname = arial, shape = oval]
  tab1 [label = '@@1']
  tab2 [label = '@@2']
  tab3 [label = '@@3']
  
  tab1 -> tab2 -> tab3;
}
  
  [1]: 'Learning Data Science'
  [2]: 'Industry vs Technical Knowledge'    
  [3]: 'Statistics vs Mathematics Knowledge'    
  ")