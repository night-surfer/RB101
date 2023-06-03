#for i in 1..99
#  puts i if i.even?
#end
#
#value = 1
#while value <= 99
#  puts value if value.even?
#  value += 1
#end

value = 2
loop do 
  puts value
  value += 2
  break if value >= 100
end