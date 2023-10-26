# 1.2 Odd
# Write a method that takes one integer argument, 
#which may be positive, negative, or zero. This method returns true if 
#the number's absolute value is odd. You may assume that the argument 
#is a valid integer value.#

# determine if an integer is odd

def is_odd?(integer)
  integer.abs.odd? #this will return true or false. the #abs returns the absolute 
  #value of the integer. So -17  will return 17
  #integer % 2 == 1  # this is just another way to do this
end


#or
#def is_odd?(integer)
#  integer % 2 != 0
#end 

#or
#def is_odd?(integer)
#  integer.remainder(2) != 0
#end

puts is_odd?(2)    == false
puts is_odd?(5)    == true
puts is_odd?(-17)  == true
puts is_odd?(-8)   == false
puts is_odd?(0)    == false
puts is_odd?(7)    == true 
