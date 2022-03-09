# Program to check if a number is Armstrong or not
# Armstrong number is a number that is equal to the sum of cubes of its digits

number = int(input("Enter a number: "))

temp = number # store a copy of the original
sum_cubes_digits = 0 # stores the sum of cubes of digits

# calculate the sum of cubes of each of its digits
while temp > 0:
    r = temp % 10
    temp = temp // 10
    sum_cubes_digits += (r ** 3)

# check if sum equals the number
if sum_cubes_digits == number:
    print(f"{number} IS an Armstrong number")
else:
    print(f"{number} IS NOT an Armstrong number")