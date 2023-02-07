# PROBLEM: Given the below data structure, return a new array with the same
# structure, but with each sub array sorted in descending order

# DING DING - new array; we are not mutating the original collection
#             descending order; flip a and b within sort

arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]
sorted = arr.map do |sub_array|
           sub_array.sort do |a, b|
             b <=> a
           end
         end

p sorted
