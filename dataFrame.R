# Data Frames:  are generic data obj of R, used to store tabular data

# creating data frame
s.no = c(1,2,3)
name = c("ram", "shyam", "Rohit")
department = c("CTech", "NWC", "CINTEL")
df = data.frame(s.no, name, department)
print(df)

# creating a data frame using data from a file
newDF = read.table('/Users/huloiarnata/Desktop/MOOC(R)/test.csv')
print(newDF)

# accessing rows & column
# df[val1, val2] : val1 -> row, val2 -> column ; can be num or str
# they can be also arrays of value like 1:2 or c(1,3)
# df[val2] just refers to column
print(df[1:2,])
print(df[,2:3])
print(df[1:2])

#subset() : which extracts subset of data based on conditions
pd = data.frame("Name" = c("Ram","Ram","Ronit","Ronit"),
                "Month" = c("Jan","Feb","Jan","Feb"),
                "BloodSugar" = c(89,99,84,88),
                "BloodPressure" = c(140,130,128,129)
                )
print(pd)
print(subset(pd,Name=="Ram" | BloodSugar<88))

#editing data frame: by direct assignment
print("Editing Data Frame:")
pd[[3]][2] = 90
print("Updated Data Frame:")
print(pd)

#editing data frame using edit() command
# -> create instance of table and use edit() command to open a table editor, change manually

# pd = data.frame()
# pd = edit(pd)

#adding rows & columns note: While doing so 
# extra row and columns can be added by using rbind() and cbind()
print("Adding row using rbind()")
pd = rbind(pd, data.frame(Name="Shyam",Month="Jan",BloodSugar=91,BloodPressure=128))
print(pd)

print("Adding column using cbind()")
pd = cbind(pd, data.frame(SPo2=c(98,99,97,99,96)))
print(pd)

#deleting rows and column in data.frame()
# to delete a row access the row first and then add negative sign to it

deleteDF  = pd[-3,-1]
print(deleteDF)

#conditional deletion
deleteCDF = pd[,!names(pd) %in% c("BloodSugar")]
print(deleteCDF)


#manipulating rows - the factor issue

