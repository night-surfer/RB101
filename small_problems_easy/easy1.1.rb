# 1.1 Repeat Yourself
# Write a method that takes two arguments, a string and a positive integer, 
#and prints the string as many times as the integer indicates.
repeat('Hello', 3) # example

#recieve two arguments, a string and a positive integer, and repeat 
#the strin as many times as the integer

def repeat(string, integer)
# first establish that the integer is positive
  if integer > 0
    #output the string the number of times the integer is
    integer.times { puts string }
  else
    puts "That is not a positive integer."
  end
end

repeat('Hello', 3)

#tested this first to make sure I'm using times correctly
#3.times do
#  puts "hello"
#end