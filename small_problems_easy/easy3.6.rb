def xor?(value1, value2)
  return true if value1 && !value2
  return true if value2 && !value1
  false                              # If you ommitted this, the results would be:
end

p xor?(5.even?, 4.even?)  #== true               true
p xor?(5.odd?, 4.odd?)    #== true               true
p xor?(5.odd?, 4.even?)   #== false              nil
p xor?(5.even?, 4.odd?)   #== false              nil
p xor?(true, true)        #== false              nil
p xor?(false, false)      #== false              nil                
p xor?(true, false)       #== true               true               
p xor?(false, true)       #== true               true                

                              # If a method ends in a (?) it should only return 
                              # explicit true and false values, hence the point 
                              # of the "false" as the final line