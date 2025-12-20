#slicing
'''
revenues = [1, 2, 3, 4, 5, 6, 7, 8, 9,]
print(revenues[1:4])

#rev 456 only
q2_revenues = revenues[3:6]
print("Q2 Revnues:", q2_revenues)

expenses = [1, 2, 3, 4, 5, 6]

for expense in expenses:
    print(f"Expense after tax: ${expense * 1.08:.2f}")



for expense in expenses:
    print(f"Expense after tax: ${expense * 1.08:.2f}")

    for i in range(len(expenses)):
        print(f"Expense number {i}: orginal expense {expenses[i]}")
'''        
expenses = [1, 2, 3, 4, 5, 6]
for i in range(len(expenses)):
    if i % 3 == 0:
        expenses [i] += 1000 #add pad
print(f"Updated expenses: {expenses}:")

for i, expenses in enumerate(expenses)
    print()