# Does My List Include This?

#def include?(array, x)
#  array.each { |element| return true if element == x }
#  false
#end

# Easier way
#def include?(array, x)
#  !!array.find_index(x)  # the !! forces the return value to true or false
#end

# Cant get this to work. try and add it returning true or false next time. see below actually
def include?(array, x)
  (array << x)
  new_array = array.select {|num| array.count(num) > 1 }
  new_array.uniq! #!= nil     #I was so close. just needed to add this last part: != nil
  #!!new_array.uniq!  #this option would have worked as well! 
end

# OK, this will do it
#def include?(array, x)
#  (array << x).uniq! != nil
#end

p include?([1,2,3,4,5], 3) #== true
p include?([1,2,3,4,5], 6) #== false
p include?([], 3)          #== false
p include?([nil], nil)     #== true
p include?([], nil)        #== false