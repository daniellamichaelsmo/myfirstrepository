<<<<<<< HEAD
# Define three variables for the LaunchCode shuttle - one for the starting fuel level, another for the number of astronauts aboard, and the third for the altitude the shuttle reaches.
starting_fuel_level = 0
number_of_astronauts = 0
altitude_reached_by_shuttle = 0

# Exercise #1: Construct while loops to do the following:
  # a. Query the user for the starting fuel level. Validate that the user enters a positive, integer value greater than 5000 but less than 30000. 
while starting_fuel_level <= 5000 or starting_fuel_level > 30000:
  starting_fuel_level = int(input("Enter the starting fuel level: "))

# b. Use a second loop to query the user for the number of astronauts (up to a maximum of 7). Validate the entry.
number_of_astronauts = int(input("Enter the number of astronauts: "))

while number_of_astronauts > 7:
    print("Too many astronauts! Maximum allowed is 7.")
    number_of_astronauts = int(input("Enter the number of astronauts: "))

# c. Use a final loop to monitor the fuel status and the altitude of the shuttle. Each iteration, decrease the fuel level by 100 units for each astronaut aboard. 
# Also, increase the altitude by 50 kilometers.
fuel_level = starting_fuel_level
altitude_reached_by_shuttle = 0

while fuel_level > 0:
    fuel_level -= 100 * number_of_astronauts
    
    if fuel_level <= 0:
        break

    altitude_reached_by_shuttle += 50

print(f"The shuttle gained an altitude of {altitude_reached_by_shuttle} km and has {fuel_level} kg of fuel left.")


# Exercise #2: Print the result with the phrase, The shuttle gained an altitude of ___ km and has ___ kg of fuel left. Fill in the blanks with the altitude and fuel level values.
altitude_reached_by_shuttle = 0

while altitude_reached_by_shuttle < 2000:
    altitude_reached_by_shuttle += 100
    print(f"Altitude: {altitude_reached_by_shuttle} km")


# If the altitude is 2000 km or higher, add “Orbit achieved!” Otherwise add, “Failed to reach orbit.”
print(f"The shuttle gained an altitude of {altitude_reached_by_shuttle} km and has {fuel_level} kg of fuel left.")

if altitude_reached_by_shuttle >= 2000:
    print("Orbit achieved!")
else:
    print("Failed to reach orbit.")
=======
# Define three variables for the LaunchCode shuttle - one for the starting fuel level, another for the number of astronauts aboard, and the third for the altitude the shuttle reaches.
starting_fuel_level = 0
number_of_astronauts = 0
altitude_reached_by_shuttle = 0

# Exercise #1: Construct while loops to do the following:
  # a. Query the user for the starting fuel level. Validate that the user enters a positive, integer value greater than 5000 but less than 30000. 
while starting_fuel_level <= 5000 or starting_fuel_level > 30000:
  starting_fuel_level = int(input("Enter the starting fuel level: "))

# b. Use a second loop to query the user for the number of astronauts (up to a maximum of 7). Validate the entry.
number_of_astronauts = int(input("Enter the number of astronauts: "))

while number_of_astronauts > 7:
    print("Too many astronauts! Maximum allowed is 7.")
    number_of_astronauts = int(input("Enter the number of astronauts: "))

# c. Use a final loop to monitor the fuel status and the altitude of the shuttle. Each iteration, decrease the fuel level by 100 units for each astronaut aboard. 
# Also, increase the altitude by 50 kilometers.
fuel_level = starting_fuel_level
altitude_reached_by_shuttle = 0

while fuel_level > 0:
    fuel_level -= 100 * number_of_astronauts
    
    if fuel_level <= 0:
        break

    altitude_reached_by_shuttle += 50

print(f"The shuttle gained an altitude of {altitude_reached_by_shuttle} km and has {fuel_level} kg of fuel left.")


# Exercise #2: Print the result with the phrase, The shuttle gained an altitude of ___ km and has ___ kg of fuel left. Fill in the blanks with the altitude and fuel level values.
altitude_reached_by_shuttle = 0

while altitude_reached_by_shuttle < 2000:
    altitude_reached_by_shuttle += 100
    print(f"Altitude: {altitude_reached_by_shuttle} km")


# If the altitude is 2000 km or higher, add “Orbit achieved!” Otherwise add, “Failed to reach orbit.”
print(f"The shuttle gained an altitude of {altitude_reached_by_shuttle} km and has {fuel_level} kg of fuel left.")

if altitude_reached_by_shuttle >= 2000:
    print("Orbit achieved!")
else:
    print("Failed to reach orbit.")
>>>>>>> f9397b864963eb21bd71bba3a978bf0333478e67
