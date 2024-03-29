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

def interleave2(a1, a2)
  a1.zip(a2).flatten(1)
end

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
p interleave2([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
p interleave2([[0, 1], 3], [2, [4, 5]]) == [[0, 1], 2, 3, [4, 5]]
