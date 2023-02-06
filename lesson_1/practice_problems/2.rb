# PROBLEM: add up all the ages of the Munster family hash
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

# OPTION 1 - each with object and summation
# This doesn't work because integers are immutable, so it is getting reassigned
# every iteration
ages.each_with_object(0) do |(_, age), total|
  total += age
  p total
end

# OPTION 2: array of values summed
p ages.values.sum

# OPTION 3: loop with total variable
ages_total = 0
ages.each do |name, age|
  ages_total += age
end

p ages_total

# OPTION 4: inject method
ages.values.inject(:+)
