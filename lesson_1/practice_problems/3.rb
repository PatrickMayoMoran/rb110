# PROBLEM: remove people older than 100
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

# OPTION 1: build new hash with simple looping
young_people = {}
ages.each do |k,v|
  young_people[k] = v if v < 100
end
puts young_people

# OPTION 2: use reject, then to_h
puts ages.reject {|k,v| v >= 100}

# OPTION 3: use select
puts ages.select {|k,v| v < 100}

# OPTION 4: each_with_object
hash = ages.each_with_object({}) do |(k,v), hash|
  if v < 100
    hash[k] = v if v < 100
  end
end
puts hash
