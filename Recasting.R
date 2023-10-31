# Recasting & joining of dataframe
# Recasting : Manipulating data frame in terms of its variable.
# Recasting helps in reshaping the data frame which brings us more insight.
# Two steps when recasting data.frame() 1)melting 2)Casting()
# identify the identifier variable(Discrete) and measurment variable(numeric). 
# note: categorical and date variable can't be measument varibales
# melt() is available in reshape() library: melt(dataframe, id.variable, measurment.variable,variable name value name)
# what melt will do is sort and stack the data accoring to the identifiers
# dcast(data, formula, value.var = cols.withvalues) 



# including library
install.packages("reshape2")
install.packages("dplyr")
library(reshape2)
library(dplyr)

# creating data frame of patients

patients.vitals = data.frame(
   "Names" = c('sonu','sonu','sonu','ronit','ronit','ronit'),
   "Months" = c('Jan','Feb','Mar', 'Jan','Feb','Mar'),
   "BloodSugar" = c(89.2, 90, 88, 86, 90, 93),
   "BloodPressure" = c(120, 128, 132, 130, 138, 132)
)

print("Patients Vitals DataFrame: ")
print(patients.vitals)

# melting data
melted.dataframe = melt(
   patients.vitals, 
   id.vars = c("Names", "Months"),
   measure.vars = c("BloodSugar", "BloodPressure")
   )
print("Data Frame of Patients after melting: ")
print(melted.dataframe)


#casting data
casted.dataframe = dcast(
   melted.dataframe,
   variable+Months~Names,
   value.var = "value"
)
print("Data Frame of Patients after casting: ")
print(casted.dataframe)

#recasting in single step
recasted.dataframe = recast(
   patients.vitals,
   variable+Months~Names,
   id.var = c("Names", "Months")
)
print("Data Frame of Patients after single step Recasting: ")
print(recasted.dataframe)

#adding new variable to data frame
mutated.dataframe = mutate(patients.vitals, LOG_BP = log(BloodPressure))
print("Data Frame of Patients after mutating: ")
print(mutated.dataframe)

