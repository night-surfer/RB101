# a bunch of differrent ways to do this one
#value = 1
#while value <= 99 do
#  puts value
#  value += 2
#end 
  
#for i in 1..99
#  puts i if i.odd?
#end 

#1.upto(99) { |i| puts i if i.odd? }

#1.upto(99) { |i| puts i if i % 2 != 0}

#100.times { |i| puts i if i.odd? }

(1..99).%(2) { |i| puts i }