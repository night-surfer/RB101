# 1.3 Stringy Strings
# take an integer as an argument, and return a string of 1's and 0's the length 
#of the integer. always start with 1


def stringy(integer)
  numbers = []    # this is where the ones and zeros will go

  integer.times do |index|           #this starts a block and says you will perform 
                                      #the following function the number of times as the argument (size)
    # the above |index| represents the current iteration
    number_1_or_0 = index.even? ? 1: 0   # this is a ternary operator acting as a 
                          #conditional expression. It checks if the index being iterated over is odd or even. 
                          #If it is even (remember, the first index is 0) then it will ouput a 1, 
                          #if the ternary is false, it will output a 0
  # number above is a variable we set and it will be assigned a 1 or 0 depending on the iteration
    numbers << number_1_or_0     #this appends the variable (number) output into the numbers array
  end  #this ends the .times block

  numbers.join #this displays the ones and zeros on the same line. Without .join, 
                #each output would be on its own line.
end           #the .join above is, in part, needed because we use puts in the method call instead of p 


puts stringy(6)
puts stringy(9)
puts stringy(4)
puts stringy(7)