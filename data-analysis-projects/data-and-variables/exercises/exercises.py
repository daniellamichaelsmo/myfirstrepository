# 1. Declare and assign the variables here:
Shuttle_name = 'Determination'
Shuttle_speed_mph = 17500
Distance_ma_km = 225000000
Distance_mo_km = 384400
mpk = 0.621
# 2. Use print() to print the 'type' each variable. Print one item per line.
'''
print(type(Shuttle_name))
print(type(Shuttle_speed_mph))
print(type(Distance_ma_km))
print(type(Distance_mo_km))
print(type(mpk))
'''
# Code your solution to exercises 3 and 4 here:
'''
Miles_to_mars = Distance_ma_km * mpk
hours_to_mars = Miles_to_mars / Shuttle_speed_mph
days_to_mars = hours_to_mars / 24
print(f"{Shuttle_name} will take {days_to_mars} to reach Mars.")
'''
# Code your solution to exercise 5 here

Shuttle_name = 'Determination'
Shuttle_speed_mph = 17500
Distance_ma_km = 225000000
Distance_mo_km = 384400
mpk = 0.621

Miles_to_moon = Distance_mo_km * mpk
hours_to_moon = Miles_to_moon / Shuttle_speed_mph
days_to_moon = hours_to_moon / 24
print(f"{Shuttle_name} will take {days_to_moon} to reach the Moon.")