# Combine Two Lists

def interleave(array1, array2)
  new_array = []
  counter = 0
  loop do
    #array1.pop(new_array)
    #array2.pop(new_array)
    new_array << array1[counter]
    new_array << array2[counter]
    counter += 1
    break if counter == array1.size 
  end
  new_array
end


p interleave([1, 2, 3], ['a', 'b', 'c']) #== [1, 'a', 2, 'b', 3, 'c']
#interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']