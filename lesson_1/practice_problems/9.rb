# PROBLEM: write own implementation of titleize
words = "the flintstones rock"

p words.split.map {|w| w.capitalize }.join(' ')
