# PROBLEM: given the following data tructure, return an array that has the 
# colors of the fruits and the sizes of the vegetables. The sizes should be
# upper case and the colors should be capitalized

hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}

# return value
[["Red", "Green"], "MEDIUM", ["Red", "Green"], ["Orange"], "LARGE"]

# ALGORITHM
# create empty array
# loop through hash
#   for each entry, append upper cased colors to array
#     append transformed version of the array object, with each element uppered
#   for each entry, append capitalized size to array

# OPTION 1 - each_with_object
def get_color_size(hash)
  hash.each_with_object([]) do |(_, details), array|
    if details[:type] == 'fruit'
      array << details[:colors].map { |color| color.capitalize } 
    elsif details[:type] == 'vegetable'
      array << details[:size].upcase
    end
  end
end

p get_color_size(hsh)

# OPTION 2 - given solution: use map on initial hash, because it will return
# an array
def color_size(hash)
  hash.map do |_, value|
    if value[:type] == 'fruit'
      value[:colors].map do |color|
        color.capitalize
      end
    elsif value[:type] == 'vegetable'
      value[:size].upcase
    end
  end
end

p color_size(hsh)
