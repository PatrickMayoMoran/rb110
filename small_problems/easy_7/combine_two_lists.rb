=begin
PROBLEM: write a method that combines two arrays, with elements alternating

INPUT: Two arrays
OUTPUT: One new array

RULES
  two arrays will have same number of elements
  arrays will never be empty

DATA STRUCTURES
  New array

ALGORITHM
  make new array
  Size of array 1 times,
    use the index of iteration to append element from array 1 and 2 to new arr
  return new array
=end
def interleave(arr1, arr2)
  interleaved = []
  arr1.size.times do |i|
    interleaved << arr1[i] << arr2[i]
  end
  interleaved
end

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
