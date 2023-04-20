=begin
GOAL: Return a hash that contains the count of uppercase characters,
lowercase characters, and other characters
=end

def letter_case_count(string)
  lower = ("a".."z")
  upper = ("A".."Z")
  count = { lowercase: 0, uppercase: 0, neither: 0 }
  string.each_char do |c|
    if lower.include?(c)
      count[:lowercase] += 1
    elsif upper.include?(c)
      count[:uppercase] += 1
    else
      count[:neither] += 1
    end
  end

  count
end

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }
