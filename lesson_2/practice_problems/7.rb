# PROBLEM: Given the following code, what are the final values of a and b?
# Try without running the code

a = 2
b = [5, 8]
arr = [a, b]

arr[0] += 2
arr[1][0] -= a

# Line 4 - a points at integer object with value 2
# Line 5 - b points at array object with two elements, integers 5 and 8
# Line 6 - arr points at array object with two elements
#           first element points at same integer object as a - 2
#           second element points at same array object as b - [5, 8]
# Line 8 - in array object, increment and reassign current value at index 0 by 2
# Line 9 - in array object, decrement and reassign the 0th element of the 1st 
#         element by value of a
#
# a still points at 2
# b still points at array object, but 0th element of b has been decremented by
# a, so instead of 5 it is 3. Final value [3, 8]

p a
p b
