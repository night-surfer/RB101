def is_odd?(integer)
  integer % 2 != 0
end 

#or
#def is_odd?(integer)
#  integer.remainder(2) != 0
#end

puts is_odd?(3)
puts is_odd?(4)
puts is_odd?(-17)
puts is_odd?(-8)
puts is_odd?(0)