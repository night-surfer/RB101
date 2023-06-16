# Convert a Number to a String!
DIGITS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

def integer_to_string(number)
  result = ''                             #for line 7 explained, 
  loop do                                 #See divmod documentation: https://ruby-doc.com/docs/ProgrammingRuby/html/ref_c_numeric.html#Numeric.divmod
    number, remainder = number.divmod(10)  #quotient, remainder = number.divmod(10) 
    result.prepend(DIGITS[remainder])
    break if number == 0
  end
  result
end

p integer_to_string(6)
p integer_to_string(4321) #== '4321'
p integer_to_string(0) #== '0'
p integer_to_string(5000) #== '5000'

