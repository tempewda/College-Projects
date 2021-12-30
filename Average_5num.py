# Program to calculate the average of 5 numbers and find the deviation of each number
# Deviation = Number - Average

def average(num_list) -> float:
    '''function to calculate average of numbers from a python list\n
       takes python list as an argument\n
       returns average of the numbers'''
    sum = 0
    count = 0 # count elements in list

    for num in num_list:
        sum += num
        count += 1
    average = sum / count

    return average

def deviation(num_list) -> None:
    '''function to calculate and print deviation of each number in a list\n
       takes python list as argument\n
       returns None'''
    avg = average(num_list)

    print("\nDeviation of:")
    for num in num_list:
        dev = num - avg # deviation
        print(f"{num}: {dev}")
    
    return None


num_list = [] # number list

# take input 
print("Enter 5 numbers:")
for i in range(5):
    num_list.append(int(input(f"Number {i + 1}: ")))

deviation(num_list)

