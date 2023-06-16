# Reversed Arrays (Part 2)
#Write a method that takes an Array, and returns a new Array with the elements of the original list in reverse order. Do not modify the original list.
#You may not use Array#reverse or Array#reverse!, nor may you use the method you wrote in the previous exercise.

#this way doesn't work because it leave the original array empty
#def reverse(array)
#  new_array = []
#  loop do 
#    new_array << array.pop
#    break if array.empty?
#  end
#  new_array
#end

#def reverse(array)  #this works!
#  new_array = []
#  array.reverse_each { |element| new_array << element }
#  new_array
#end

#def reverse(array)
#  array.each_with_object([]) { |element, new_array| new_array << array.reverse }
#end

def reverse(array)
  array.inject([]) { |new_array, element| new_array.unshift(element) }
end

p reverse([1,2,3,4])

#Examples:
p reverse([1,2,3,4])# == [4,3,2,1]          # => true
p reverse(%w(a b e d c)) == %w(c d e b a)  # => true
p reverse(['abc']) == ['abc']              # => true
p reverse([]) == []                        # => true

p list = [1, 3, 2]                      # => [1, 3, 2]
p new_list = reverse(list)              # => [2, 3, 1]
p list.object_id != new_list.object_id  # => true
p list == [1, 3, 2]                     # => true
p new_list == [2, 3, 1]                 # => true