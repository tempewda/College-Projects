# Program to read radius of a circle and print its area
import math

radius = float(input("Radius: "))
area = math.pi * (radius ** 2)
area = round(area, 2) # round area to 2 decimal places

print(f"Area: {area}")
