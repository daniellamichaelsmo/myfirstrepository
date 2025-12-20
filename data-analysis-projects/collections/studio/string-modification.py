'''
my_string = "LaunchCode"

# a) Use string methods to remove the first three characters from the string and add them to the end.
removed_first_three = my_string[3:] + my_string[:3]
print(removed_first_three)

# Use a template literal to print the original and modified string in a descriptive phrase.
print(f"Orginal string: {my_string}, then Modified string: {removed_first_three}")

# b) Modify your code to accept user input. Query the user to enter the number of letters that will be relocated.
my_string = "LaunchCode"
#ask user how many letters to move
num = int(input("Number of letters moving from start to end of word: "))
# then slice
sliced_string = my_string[num:] + my_string[:num]
print(sliced_string)

# c) Add validation to your code to deal with user inputs that are longer than the word. In such cases, default to moving 3 characters. Also, the template literal should note the error.
my_string = "LaunchCode"
#ask user how many letters to move
user_num = input("Input number of letters to move from start to end of word")
#Convert
try:
    num = int(user_num)
except ValueError:
    num = 3
    error_note = "(Invalid imput; default to 3)"
else:
    #if number > word length or negative
    if num > len(my_string) or num < 0:
        error_note = f"(Invalid imput; default to 3)"
        num = 3
    else:
        error_note = ""
# then slice
sliced_string = my_string[num:] + my_string[:num]
#output
print(f"Orginal string: {my_string}, then Modified string: {sliced_string} {error_note}")
'''