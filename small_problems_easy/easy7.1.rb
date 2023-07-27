# Combine Two Lists

def interleave(array1, array2)
  new_array = []       # this initializes the new array we will store the final product in
  counter = 0          # this 'counter' initializes a counter variable to keep track of the current index position. it is setting up the loop at index 0 in both arrays
  loop do              #starts a loop for the method to itterate through and continues untill a break condition is met
    new_array << array1[counter]    #this sends (appends) one item from the array1 to the new_array, starting with whatever is at index 0
    new_array << array2[counter]    #this sends (appends) one item from the array2 to the new_array, starting with whatever is at index 0
    counter += 1                    #this sets the index one move to the next index position in each array and continues the loop
    break if counter == array1.size # if the counter reaches the size of the final index, it will break the method out of the loop
   #break if counter == array1[-1]  #this is just another way to write the above line
  end                               # this ends the loop
  new_array                         #this returns the new_array after the loop has been completed
end                                 #exits the method


p interleave([1, 2, 3], ['a', 'b', 'c']) #== [1, 'a', 2, 'b', 3, 'c']
#interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']