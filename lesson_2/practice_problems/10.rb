# PROBLEM: given the below data structure and without modifying the original array,
# use the map method to return a new array, identical in structure to the original
# but the with every value incremented by 1

arr = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]

# EXAMPLES:
[{a: 2}, {b: 3, c: 4}, {d: 5, e: 6, f: 7}]

# ALGORITHM
#   loop through each hash in array
#   for each hash, create a new empty hash
#   for each hash, loop through the key value pairs
#     for each key value pair, add that key to the new hash with a value
#     that is one greater than current value
#   end key value pair loop
#   return new hash
#   end each hash loop

def increment_hash_values(array)
  array.map do |hash|
    new_hash = {}
    hash.each do |key, value|
      new_hash[key] = value + 1
    end
    new_hash
  end
end

p arr
p increment_hash_values(arr)
p arr
