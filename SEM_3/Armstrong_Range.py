# Program to print all the Armstrong numbers in an interval
# Armstrong number is a number that is equal to the sum of cubes of its digits

def is_Armstrong(number):
    '''checks if a number is Armstrong or not
       returns True if its Armstrong
       returns False otherwise'''

    temp = number # store a copy of the original
    sum_cubes_digits = 0 # stores the sum of cubes of digits

    # calculate the sum of cubes of each of its digits
    while temp > 0:
        r = temp % 10
        temp = temp // 10
        sum_cubes_digits += (r ** 3)

    # check if sum equals the number
    if sum_cubes_digits == number:
        return True
    else:
        return False

# main program
print("Enter the interval:")
start = int(input("Starting interval: "))
end = int(input("Ending interval: "))
print(f"Armstrong numbers in range {start} to {end}:")

# find and print all the Armstrong numbers
for i in range(start, end + 1):
    if is_Armstrong(i):
        print(i, end = ' ')