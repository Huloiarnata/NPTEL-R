# Implementing List
#Creating a list
ID = c(1,2,3,4,5)
emp.name = c("hello","w","r","l","d")
num.emp = 5
emp.list = list("id" = ID,"Names" = emp.name,"Total Staff" = num.emp)
print(emp.list)

# Accessing Components using names
print(emp.list$Names)

#Accessing Components using indices
print(emp.list[[1]])
print(emp.list[[2]])
print(emp.list[[1]][1])
print(emp.list[[2]][1])

#Manipulating components of list
emp.list["Total Staff"] = 3
emp.list[[2]][1] = "ronit"
print(emp.list)

#Concatenating Lists: for adding new attribute in a already containing list

emp.ages =  list("ages" = c(6,5,6,5,6))
emp.list = c(emp.list, emp.ages)
print(emp.list)


