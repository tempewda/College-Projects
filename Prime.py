# program to check if a number is prime or not

number = int(input("Enter a number: "))
factor = 0
for i in range(1, number + 1):
    if number % i == 0:
        factor += 1
if factor == 2:
    print(f"{number} is a Prime Number")
else:
    print(f"{number} is not a Prime Number")
