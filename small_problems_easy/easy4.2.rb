# What Century is That?

#def century(year)
#  century = year / 100 + 1
#  if year % 100 == 0            # lines 5 & 6 can also be written out as:
#    century -= 1                # century -= 1 if year % 100 == 0
#  end
#  century.to_s + century_suffix(century)
#end
#
#def century_suffix(century)
#  if [11,12,13].include?(century % 100)
#    return "th"
#  end
#  last_digit = century % 10
#  
#  case last_digit
#  when 1 then "st"
#  when 2 then "nd"
#  when 3 then "rd"
#  else "th"
#  end
#end

# I like this example. Only one method, uses a ternary operator, and is readable
def century(num)
  century = num % 10 > 0 ? (num/100+1).to_s : (num/100).to_s
  return century << 'th' if century.end_with?('11', '12', '13')
  return century << 'st' if century.end_with?('1')
  return century << 'nd' if century.end_with?('2')
  return century << 'rd' if century.end_with?('3')
  century << 'th'
end


p century(2000) #== '20th'
p century(2001) #== '21st'
p century(1965) #== '20th'
p century(256) #== '3rd'
p century(5) #== '1st'
p century(10103) #== '102nd'
p century(1052) #== '11th'
p century(1127) #== '12th'
p century(11201) #== '113th'