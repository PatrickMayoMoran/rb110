s = 'abc'
puts s.public_methods.inspect

# The above prints all the methods - from String, Object, Kernel - available
# to s.
#
# How would you modify to only print the methods available/overridden by the
# String class?

puts s.public_methods(false).inspect
