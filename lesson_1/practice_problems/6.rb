# PROBLEM: change the array below so each name is reduced to its first
# three letters
# DING DING DING - 'change the array' means we should be mutating, not 
# building a new array
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# OPTION 1: map!
flintstones.map! { |name| name[0,3] }
p flintstones

#OPTION 2: mutation during iteration
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flintstones.each {|name| name.gsub!(name, name[0,3]) }
p flintstones
