# PROBLEM: find the index of the first name that starts with 'Be'
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# OPTION 1: use index with start_with?
p flintstones.index {|el| el.start_with?('Be')}

# OPTION 2: provided solution - use index with slicing to ensure that Be comes
# at beginning of string
p flintstones.index {|name| name[0,2] == 'Be' }
