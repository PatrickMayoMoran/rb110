def my_method(a, b = 2, c = 3, d)
  p [a, b, c, d]
  end

my_method(4, 5, 6)

# This will print [4, 5, 3, 6]
# Missing arguments are assigned first, so a gets assigned 4 and d gets 
# assigned 6
# Then default arguments are assigned. b gets assigned 5, leaving c without
# a value so it is assigned its default value of 3
#
# In the documentation, I looked at Methods to read about default arguments
# and then calling methods to read about calling with positional arguments
