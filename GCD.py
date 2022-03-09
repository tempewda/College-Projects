# Program to calculate GCD of 2 numbers

# take input from User
print("Enter 2 numbers:")
num1 = int(input("1st number: "))
num2 = int(input("2nd number: "))

small = num1 if num1 < num2 else num2
GCD = 1

for counter in range(2, small + 1):
    if num1 % counter == 0 and num2 % counter == 0:
        GCD = counter

print(f"GCD of {num1} and {num2}: {GCD}")