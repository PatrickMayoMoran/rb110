# PROBLEM: Sort by publication year, earliest to latest
books = [
  {title: 'One Hundred Years of Solitude', author: 'Gabriel Garcia Marquez', published: '1967'},
  {title: 'The Great Gatsby', author: 'F. Scott Fitzgerald', published: '1925'},
  {title: 'War and Peace', author: 'Leo Tolstoy', published: '1869'},
  {title: 'Ulysses', author: 'James Joyce', published: '1922'}
]

# ALGORITHM
#   from each sub hash, access the publication year
#   sort by this year - no need to convert to integer
sorted = books.sort_by do |book|
  book[:published]
end

puts sorted
