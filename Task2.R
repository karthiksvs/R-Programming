#problem 1
# Create two 2x3 matrixes.
m1 = matrix(c(2, 3, 4, 5, 6, 6), nrow = 2)
print("Matrix-1:")
print(m1)
m2 = matrix(c(0, 1, 2, 3, 0, 4), nrow = 2)
print("Matrix-2:")
print(m2)

result = m1 + m2
print("Result of addition: ")
print(result)

result = m1 - m2
print("Result of subtraction: ")
print(result)

result = m1 * m2
print("Result of multiplication: ")
print(result)

result = m1 / m2
print("Result of division: ")
print(result)


#problem 2
x = c(12, 20, 36)
print("Sum:")
print(sum(x))
print("Mean:")
print(mean(x))  
print("Product:")
print(prod(x))

#problem 3
l1 = list("a", "b", "c")
l2 = list("X", "Y", "Z", "a", "b", "c")
print("Original lists:")
print(l1)
print(l2)
print("All elements of l2 that are not in l1:")
setdiff(l2, l1)

# problem 4
person_data = data.frame(
  name = c('Dima', 'Katherine', 'James', 'Emily', 'Michael'),
  age = c(25,30,21,36,40),
  qualify = c('F', 'F', 'M', 'F', 'M')
)
print("Original dataframe:")
print(person_data)
print("Extract 3rd and 5th rows with 1st and 3rd columns :")
result =  person_data[c(3,5),c(1,3)]
print(result)
