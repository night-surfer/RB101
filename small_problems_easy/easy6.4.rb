# Reversed Arrays (Part 1)
#This is the easy way:
#def reverse!(string)
#  string.reverse!
#end

#This is understanding it better:
def reverse!(array)
  left_index = 0        #this represents the first character (index spot) in the array
  right_index = -1      #this represents the last character (index spot) in the array
  
  while left_index < array.size / 2   #this divide by 2 is letting the while loop know to break when the indexing gets to the middle point of the array. This way it also factors in for an od number of characters.
    array[left_index], array[right_index] = array[right_index], array[left_index] #REMEMBER THIS!! This parallel assignment  is a Ruby idiom for exchanging two values without requiring an intermediate variable. 
    left_index += 1     #this is moving the left index to be swapped one spot to the right each time the loop itterates
    right_index -= 1    #this is moving the right index to be swapped one spot to the left each time the loop itterates
  end               #this is the end of the loop
  array             #this is returning the result
end

#This is the same thing as above. It is just using a loop do and a break instead of a while loop!
#def reverse!(array)
#  left_index = 0
#  right_index = -1
#
#  loop do
#    array[left_index], array[right_index] = array[right_index], array[left_index]
#    left_index += 1
#    right_index -= 1
#    break if left_index >= array.size / 2 
#  end
#  array
#end


list = [1,2,3,4,5]
#p reverse!([1,2,3,4])
p list
p result = reverse!(list)
#result == [4, 3, 2, 1] # true
#list == [4, 3, 2, 1] # true
p list
p list.object_id == result.object_id # true

#list = %w(a b e d c)
#reverse!(list) == ["c", "d", "e", "b", "a"] # true
#list == ["c", "d", "e", "b", "a"] # true
#
#list = ['abc']
#reverse!(list) == ["abc"] # true
#list == ["abc"] # true
#
#list = []
#reverse!(list) == [] # true
#list == [] # true