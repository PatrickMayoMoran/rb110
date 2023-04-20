def swapcase(string)
  string.chars.map do |c|
    if c == c.downcase
      c.upcase
    else
      c.downcase
    end
  end.join
end

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'
