# Halvsies
# this works on all but the last two. It doesn't provide a second sub array for [5], and presents an error for a blank array []
def halvsies(array)
  if array.size.odd?
    array.each_slice((array.size + 1) / 2 ).to_a
  else
   array.each_slice(array.size / 2).to_a
  end
end

#def halvsies(array)
#  middle = (array.size/2.0).ceil #this takes care of the odd issue. #ceil method does this by adding 1 if the array is even. But it needs to be 2.0 to work! 
#  first_sub_array = array.slice(0, middle) #creates an array. #slice method needs to arguments: 0 is index 0, and middle is how far to include in the array
#  second_sub_array = array.slice(middle, array.size - middle) #this creates another array from one past the middle, to the end of the original array
#  [first_sub_array, second_sub_array] #this is just telling what the method should return. Since the first... and second... are already their own arrays, they will return as sub arrays here.
#end

# This is another way to aproach the problem and might be more readable:
#def halvsies(array)
#  left = array[0..((array.size-1)/2)] #this assigns the 'left' variable the portion of the array from index 0 to the index of the midpoint of the array, calculated by (array.size-1), then dividing that by 2
#  right = array[(left.size)..]  #this creates a variable right and assigns it the portion of the array starting from the index after the last element of left (left.size). The .. range operator is used to specify the range from left.size to the end of the array.
#  [left, right] #this creates a new array that will hold the two sub arrays
#end

p halvsies([1, 2, 3, 4,5,6,7])
p halvsies([1, 2, 3, 4])      #== [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3])   #== [[1, 5, 2], [4, 3]]
p halvsies([5])               #== [[5], []]
#p halvsies([])                == [[], []]