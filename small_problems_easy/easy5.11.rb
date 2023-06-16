# List of Digits

#def digit_list(number)
#  digits = []
#  loop do
#    number, remainder = number.divmod(10)
#    digits.unshift(remainder)
#    break if number == 0
#  end
#  digits
#end

# Or shorthand it this way
def digit_list(number)
  number.to_s.chars.map(&:to_i) # remember, this .map(&:to_i) is shorthand for .map { |element| element.to_i }
end


p digit_list(12345) #== [1, 2, 3, 4, 5]     # => true
p digit_list(7) #== [7]                     # => true
p digit_list(375290) #== [3, 7, 5, 2, 9, 0] # => true
p digit_list(444) #== [4, 4, 4]             # => true