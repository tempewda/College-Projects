# Program to convert temperature in celcius scale to fahrenheit scale
# F = (C * 1.8) + 32

celsius = float(input("Temperature in Celsius: "))

fahrenheit = (celsius * 1.8) + 32
fahrenheit = round(fahrenheit, 1) # round to 1 decimal place
print(f"Temperature in Fahrenheit: {fahrenheit}")