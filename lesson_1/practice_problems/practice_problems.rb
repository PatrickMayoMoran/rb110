# PROBLEM: given the array below, turn it into a hash where the keys are 
# the names and the values are the positions in the array
#
# ALGORITHM
#   create an empty hash
#   iterate over the array values
#     for each array value, add it to the dictionary as a key with the value
#     the index
#   return hash

flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

# OPTION 1
hash = {}
flintstones.each_with_object(hash) do |value, hash|
  hash[value] = flintstones.index(value)
end

hash

# OPTION 2
hash_2 = {}
flintstones.each_with_index do |value, index|
  hash_2[value] = index
end

puts hash_2
