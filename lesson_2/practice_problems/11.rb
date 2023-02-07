# PROBLEM: Given the following data structure, return a new array of the same
# structure, but only with integers that are multiples of 3
#
# ALGORITHM
#   transform sub arrays by selecting only elements that are multiples of 3

arr = [[2], [3, 5, 7, 12], [9], [11, 13, 15]]

def transform(array)
  array.map do |sub_array|
    sub_array.select { |num| num % 3 == 0 }
  end
end

three_multiples = transform(arr)
p three_multiples
