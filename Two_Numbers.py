# Program to input 2 numbers and find the sum, difference, product and quotient

print("Enter 2 numbers:")
num1 = int(input("1st number: "))
num2 = int(input("2nd number: "))

# store the greater number in num1
if num2 > num1:
    num1, num2 = num2, num1

print(f"{num1} + {num2} = {num1 + num2}")       # print the sum
print(f"{num1} - {num2} = {num1 - num2}")       # print the difference
print(f"{num1} X {num2} = {num1 * num2}")       # print the product
if num2 != 0:
    print(f"{num1} / {num2} = {num1 // num2}")  # print the quotient
else:
    print("Division by 0 not possible!!")

