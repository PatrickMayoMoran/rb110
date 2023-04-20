# OPTION 1 - Use capitalize
# def word_cap(string)
#   string.split.map(&:capitalize).join(' ')
# end
#
# OPTION 2 - capitalize not allowed
def word_cap(string)
  string.split.map do |word|
    chars = word.downcase.chars
    chars[0].upcase! if chars[0] =~ /[a-zA-Z]/
    chars.join
  end.join(' ')
end

p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'
