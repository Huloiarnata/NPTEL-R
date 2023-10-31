# Implementing Vectors
list1 = c(2,3,4,5,6)
print(list1)

x= 10 + 5%%3
print(typeof(x))

ID = c(1, 2, 3, 4)

Patient_name = c("Ran", "Shyam", "Nandini", "Maya")

num.patient = 4
patient_list = list(num.patient, ID, Patient_name)
for (i in patient_list[1]){
   for (j in i){
      print(j)
   }
}

print(patient_list[[3]][2])

A = matrix(c(9:1), 3, 3)
print(A[3, 2])

student_data = data.frame(student_id=c(1:4), 
                          student_name=c('Ram','Harish','Pradeep','Rajesh')
                          )

student_data['student_dept']= c('Commerce','Biology', 'English','Tamil')
print(student_data[[4]])

