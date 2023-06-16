# Combining Arrays

#def merge(array1, array2)
#  new_array = array1 << array2
#  new_array.flatten!
#  new_array.uniq 
#end

# Launches way:
#def merge(array1, array2)
#  array1 | array2     # this #|  is an array method that Returns a new array by joining array1 with array2, excluding any duplicates and preserving the order from the given arrays.
#end

# You can also do it this way:
def merge(arr1, arr2)
  (arr1 + arr2).uniq
end

p merge([1, 3, 5], [3, 6, 9]) #== [1, 3, 5, 6, 9]