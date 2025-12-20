
# Part 1 A -- Make a Line
def make_line(size):
    line = ""
    for i in range(size):
        line += "#"
    return line
'''
print(make_line(5))
'''

# Part 1 B -- Make a Square
# create a function using your make_line function to code a square
def make_square(size):
    line = ""
    for i in range(size):
        line += "#"
        square += make_line
    return line
'''
print(make_square(5))
'''

# Part 1 C -- Make a Rectangle
def make_rectangle(width, heigth):
    rectangle = ""
    for i in range(heigth):
        rectangle += (make_line(width) + "\n")
    return rectangle
'''
print(make_rectangle(5, 3))
'''

# Part 2 A -- Make a Stairs
def make_stairs(height):
    stairs = ""
    for i in range(height):
        stairs += (make_line(i+1) + "\n")
    return stairs
'''
print(make_stairs(5))
'''
# Part 2 B -- Make Space-Line 
def make_space_line(numSpaces, numChars):
    line = ""

    for i in range(numSpaces):
        line += " "

    for i in range(numChars):
        line += "#"

    for i in range(numSpaces):
        line += " "

    return line
'''
print(make_space_line(3,5))
'''
# Part 2 C -- Make Isosceles Triangle
def make_iscoceles_triangle(height):
    triangle = ""
    for i in range(height):
        triangle += (make_space_line(height - i - 1, 2* i + 1)) + "\n"
    return triangle
'''
print(make_iscoceles_triangle(5))
'''
# Part 3 -- Make a Diamond
def diamond(height):
    diamond = ""
    for i in range(height):
        diamond += (make_space_line(height - i - 1, 2* i + 1)) + "\n"
    for i in range (height -1, -1 , -1):
        diamond += (make_space_line(height - i - 1, 2* i + 1)) + "\n"
    return diamond

'''
print(diamond(5))
'''





