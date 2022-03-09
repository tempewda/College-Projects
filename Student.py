
marks = [0.0] * 3
sum_marks = 0.0
percentage = 0.0
grade = ''

# input the marks and calvulate total marks obtained
print("Enter the marks:")
for index in range(3):
    marks[index] = float(input(f"Subject {index + 1}: "))
    sum_marks += marks[index]

percentage = sum_marks / 300 * 100

# calculation of grade
if percentage < 40:
    grade = 'E'
elif percentage < 60:
    grade = 'D'
elif percentage < 70:
    grade = 'C'
elif percentage < 80:
    grade = 'B'
else:
    grade = 'A'

# print all the values
print("\nMarks Obtained:")
for index in range(3):
    print(f"Subject {index + 1}: {marks[index]}")
print(f"Percentage: {percentage} %")
print(f"Grade: {grade}")