# Program to generate Fibo sequence upto n numbers

n = int(input("Enter value of n: "))
print(f"Fibonacci Series upto {n}:")

a = 0
b = 1
c = 1
for i in range(n):
    print(a, end = ' ')
    a = b
    b = c
    c = a + b