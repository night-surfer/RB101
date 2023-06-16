# Mutation

array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []
array1.each { |value| array2 << value }
array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
puts array2
puts array1

puts array2.object_id
puts array1.object_id
puts "love"
puts "love"

#one of the keys here is to understand the fact that there are the arrays, but 
# there are also the string elements in the arrays. The arrays have differrent 
#object_id's, but the individual string elements are the same (and therefore 
#have the same object_id's). So if you mutated array1, array2 would not be affected. 
#But because you are mutating the string objects within array1, and those string 
#objects are the same as the ones in array2, array two is affected by the method 
#calls on line 6 of this code! 
#
#Student Aaron Tan explains it well here:
#array1 is first initialized to point to an array of string objects, and array2 
#is initialized to point to an empty array. When Array#each is called on array1,
#a copy of each element reference contained in array1 is passed as an argument 
#into a block, with the local variable value initialized to point to each 
#corresponding element. Because reference values are being passed, for each 
#iteration, value is pointing at the original string objects contained within 
#array1. So for each iteration, when value is appended to array2 using the << 
#operator on line 3, these are the original string objects of array1 being appended. 
#Therefore, when the elements of array1 are mutated on line 4 using the 
#String#upcase! method, the changes are reflected in the elements of array2. 
#It should be noted that local variables array1 and array2 in fact point at 
#entirely different array objects, but these array objects contain individual 
#elements that are the same objects. If a mutating method were called on array1 
#that did not mutate any of the existing elements, (such as Array#sort!), this 
#method invocation would not cause any changes in array2, because array1 and 
#array2 refer to different array objects, though they contain the same string 
#objects as elements.
#
#IF you don't want to mutate the objects in array2, you would have to clone the 
#individual elements, not the array. So on line 3 of the original, 
#you'd have to change it to read:
#
#array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
#array2 = []
#array1.each { |value| array2 << value.dup }  #here the dup method is used to create a duplicate (copy) of each element in array1 and store it in array2 using the << (concatenation) operator. This ensures that array2 contains independent copies of each element from array1.
#array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
#puts array2
#
#Again, This is because the array object is just a collection of references, 
#thus copying that into a new object just maintains the references. By cloning 
#the individual elements, you get an array with new references.