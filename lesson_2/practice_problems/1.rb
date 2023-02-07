# PROBLEM: how would you order the below array by descending numeric value
arr = ['10', '11', '9', '7', '8']

# OPTION 1: use sort, flip a and b, and use to_i on each block argument
sorted = arr.sort do |a, b|
  b.to_i <=> a.to_i
end

puts sorted
