## Below we are creating a data frame from stratch 
id <- c(1:10)

name <- c("John Mendes", "Rob Stewart", "Rachel Abrahamson", "Christy Hickman", "Johnson Harper", "Candace Miller", "Carlson Landy", "Pansy Jordan", "Darius Berry", "Claudia Garcia")

job_title <- c("Professional", "Programmer", "Management", "Clerical", "Developer", "Programmer", "Management", "Clerical", "Developer", "Programmer")

employee <- data.frame(id, name, job_title)

## printing the data frame to see how does it look
print(employee)

## We can see that the last name and first are combined so we are going to use separate function
## if we the separate function we have first put in the dataframe name "employess", the column we want to separate
## the new names with "into = c("","")" and sep with space as a separator "sep = '' "

separate(employee, name, into = c("first_name","last_name"), sep = " ")

## to unite the separated column we can use the function "unite"
## this function take argument first the data frame, the column name you want to combine the in qoutation marks
## then the column you want to combine separated by a space "sep = ' ' "

unite(employee, 'name',last_name, first_name, sep = ' ')