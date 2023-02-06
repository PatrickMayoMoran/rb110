# PROBLEM: pick out the minimum age from the family hash
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

# OPTION 1: find min of an array
puts ages.values.min

# OPTION 2: simple looping with comparison
min_age = ages.first.last
ages.each {|k,v| min_age = v if v < min_age}
p min_age
