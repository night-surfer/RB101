def negative(number)
 number > 0 ? -number : number   # this way will just reverse all the positive numbers
 #number ? -number : number      # this way will reverse everything
 
end

p negative(5) #== -5
p negative(-3) #== -3
p negative(0) #== 0      # There's no such thing as -0 in ruby
p negative(15) #== -5
p negative(-33) #== -3
p negative(2)