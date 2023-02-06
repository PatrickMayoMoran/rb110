5.step(to: 10, by: 3) { |value| puts value }

# What does this code print?
#
# 5
# 8
#
# Step starts with the caller, goes up "by" in each implementation
# and exits the loop if the value is greater than the limit
