def staggered_case(string, upper: true)
  string.chars.map.with_index do |c, i|
    if upper
      i.even? ? c.upcase : c.downcase
    else
      i.odd? ? c.upcase : c.downcase
    end
  end.join
end

p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'
p staggered_case('ALL_CAPS', upper: false)
