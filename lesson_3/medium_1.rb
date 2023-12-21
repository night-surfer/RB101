# Q 1 write a one-line program that creates the following output 10 times, 
# with the subsequent line indented 1 space to the right:
# string = "The Flintstones Rock!"
# iteration = 0
# until iteration == 10
#   new_string = ' ' * iteration << string
#   puts new_string
#   iteration += 1
# end
#   #OR
# 10.times {|time| puts (' ' * time) + string}
  
#Question 2 The following statement will be an error:Why is this and what are two possible ways to fix this?
#puts "the value of 40 + 2 is " + (40 + 2)# change to (40+2).to_s
#puts "the value of 40 + 2 is #{40 + 2}"

#3 Question 3 Alan wrote the following method, which was intended to show all of the factors of the input number:
# def factors(number)
#   divisor = number
#   factors = []
#   begin
#     factors << number / divisor if number % divisor == 0
#     divisor -= 1
#   end until divisor == 0
#   factors
# end
# #  How can you make this work without using the begin/end until construct? 
# def factors(number)
#   divisor = number
#   factors = []
#   while divisor > 0
#     factors << number / divisor if number % divisor == 0
#     divisor -= 1
#   end
#   return factors 
# end
#  factors(39)

# Question 4
# a = [1,2,3]
# def rolling_buffer1(input_array, max_buffer_size, new_element)
#   #buffer << new_element
#     buffer = input_array + [new_element]
#   buffer.shift if buffer.size > max_buffer_size
#   buffer
# end
# p rolling_buffer1(a, 3, 6)
# p rolling_buffer1(a, 3, 9)

# Question 5:  Its Something about the limit variable. What's wrong with the code?

#limit = 15   # this is the original bad code
#
#def fib(first_num, second_num)
#  while first_num + second_num < limit
#    sum = first_num + second_num
#    first_num = second_num
#    second_num = sum
#  end
#  sum
#end
#
#result = fib(0, 1)
#puts "result is #{result}"

## limit = 15
## 
## def fib(first_num, second_num, limit) 
##   while first_num + second_num < limit
##     sum = first_num + second_num
##     first_num = second_num
##     second_num = sum
##   end
##   sum
## end
## 
## result = fib(0, 1, 15)
## puts "result is #{result}"

# Question 6: What is the output of the following code?
#answer = 42
#
#def mess_with_it(some_number)
#  some_number += 8
#end
#
#new_answer = mess_with_it(answer)
#
#p answer - 8     # 34 - non mutating method

# Question 7: One day Spot was playing with the Munster family's 
#home computer and he wrote a small program to mess with their demographic data:
# After writing this method, he typed the following...and before Grandpa could
#stop him, he hit the Enter key with his tail:
# Did the family's data get ransacked? Why or why not?

# munsters = {
#   "Herman" => { "age" => 32, "gender" => "male" },
#   "Lily" => { "age" => 30, "gender" => "female" },
#   "Grandpa" => { "age" => 402, "gender" => "male" },
#   "Eddie" => { "age" => 10, "gender" => "male" },
#   "Marilyn" => { "age" => 23, "gender" => "female"}
# }
# 
# def mess_with_demographics(demo_hash)
#   demo_hash.values.each do |family_member|
#     family_member["age"] += 42
#     family_member["gender"] = "other"
#   end
# end
# mess_with_demographics(munsters)
# p munsters

=begin
 Spot will find himself in the "dog" house for this one. The family's data is 
 all in shambles now. Why? Remember that in Ruby, what gets passed to a method 
 isn't the value of the object. Under the hood, Ruby passes the object_id of 
 each argument to the method. The method stores these object_id's internally 
 in locally scoped (private to the method) variables (named per the method 
 definition's parameter list).

So Spot's demo_hash is pointing to the munsters hash. In this case, the program 
does not create a new hash for the result -- it just uses the existing hash as-is. 
So the actual hash object that is being messed with inside of the 
method IS the munsters hash.
=end

# Question 8:the classic rules of rock-paper-scissors game: it returns the 
#winning fist or, in the case of a tie, the fist that both players played.
# What is the result of the following call?

# def rps(fist1, fist2)
#   if fist1 == "rock"
#     (fist2 == "paper") ? "paper" : "rock"
#   elsif fist1 == "paper"
#     (fist2 == "scissors") ? "scissors" : "paper"
#   else
#     (fist2 == "rock") ? "rock" : "scissors"
#   end
# end
# 
# puts rps(rps(rps("rock", "paper"), rps("rock", "scissors")), "rock")

=begin
The outermost call is evaluated by determining the result of 
rps(rps("rock", "paper"), rps("rock", "scissors")) versus rock. 
In turn that means we need to evaluate the two separate results of 
rps("rock", "paper") and rps("rock", "scissors") and later combine them by 
calling rps on their individual results. Those innermost expressions will 
return "paper" and "rock", respectively. Calling rps on that input will 
return "paper". Which finally when evaluated against "rock" will return "paper".
=end

# Question 9: Consider these two simple methods:
# def foo(param = "no")
#   "yes"
# end
# 
# def bar(param = "no")
#   param == "no" ? "yes" : "no"
# end
# 
# bar(foo)

# "NO" This is because the value returned from the foo method will always be 
# "yes" , and "yes" == "no" will be false.