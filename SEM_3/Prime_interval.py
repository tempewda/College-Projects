# Program to print all the prime numbers in an interval

def is_Prime(number):
    '''takes a number and checks if its Prime
        returns True if its Prime
        returns False otherwise'''

    factor = 0 # store the number of factors

    # count the number of factors
    for i in range(1, number + 1):
        if number % i == 0:
            factor += 1

    # check the number of factors
    if factor == 2:
        return True
    else:
        return False

# main program
print("Enter the interval:")
start = int(input("Starting interval: "))
end = int(input("Ending interval: "))
print(f"\nPrime numbers in range {start} to {end}:")

for i in range(start, end + 1):
  if is_Prime(i) == True:
    print(i, end = ' ')