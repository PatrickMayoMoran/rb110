# PROBLEM: determine total age of just the male members of the family

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

# OPTION 1: simple loop
total_male_age = 0
munsters.each do |name, info|
  if info["gender"] == "male"
    total_male_age += info["age"]
  end
end

p total_male_age

# OPTION 1: given solution - loop through values only since key is not needed
total_male_age = 0
munsters.each_value do |details|
  total_male_age += details["age"] if details["gender"] == "male"
end

p total_male_age
