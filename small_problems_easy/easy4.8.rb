# Convert a String to a Signed Number!

DIGITS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4, '5' => 5, 
  '6' => 6, '7' => 7, '8' => 8, '9' => 9, 
}

def string_to_integer(string)
  digits = string.chars.map { |char| DIGITS[char] }
  
  value = 0
  digits.each { |digit| value = 10 * value + digit }
  value
end

def string_to_signed_integer(string)
  case string[0]
  when '-' then -string_to_integer(string[1..-1])  #not sure of the signifigance of (-) at18:17???
  when '+' then  string_to_integer(string[1..-1])   #answer: it prepends(aka:adds something to the beginning) a negative in the return,
  else           string_to_integer(string)
 #else          -string_to_integer(string)         #replace this with the line above it to see an example
  end
end

# another way to do this is with a ternary:
#def string_to_signed_integer(string)
#  num = string_to_integer(string.delete('-+'))  #this could also be done as: (string.delete('^0-9'))
#  string[0] == '-' ? -num : num
#end

p string_to_signed_integer('4321') #== 4321
p string_to_signed_integer('-570') #== -570
p string_to_signed_integer('+100') #== 100