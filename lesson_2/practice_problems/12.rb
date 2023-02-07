# PROBLEM Given the following data structure, and without using the Array#to_h method, write some code that will return a hash where the key is the first item in each sub array and the value is the second item.

arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]
# expected return value: {:a=>1, "b"=>"two", "sea"=>{:c=>3}, {:a=>1, :b=>2, :c=>3, :d=>4}=>"D"}

# ALGORITHM
# Create an empty hash
# loop through array
#   for each sub array, assign sub_array[0] as a key and sub_array[1] as a value
#   end loop
# return hash

def transform(array)
end
