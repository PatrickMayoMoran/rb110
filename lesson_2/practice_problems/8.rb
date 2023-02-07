# PROBLEM: using each, print out each vowel in each word

VOWELS = 'AEIOUaeiou'

hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}

hsh.each do |key, array|
  array.each do |word|
    word.chars do |char|
      puts char if VOWELS.include?(char)
    end
  end
end
