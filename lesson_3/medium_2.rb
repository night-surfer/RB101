=begin
Question 1
Every object in Ruby has access to a method called object_id, which returns a 
numerical value that uniquely identifies the object. This method can be used to 
determine whether two variables are pointing to the same object.

Take a look at the following code and predict the output:
=end

# a = "forty two"
# b = "forty two"
# c = a
# 
# puts a.object_id
# puts b.object_id
# puts c.object_id

=begin
When you run the code, the exact object ids may differ; however, the output 
should make it clear that a and b reference different objects. Don't be deceived 
by appearances — the two objects look the same (ie, they both have the 
value "forty two") but they are still different objects.

Meanwhile, the object ids show that a and c reference the same object. 
This is because c was initialized to the object referenced by a. No surprises here.

(Object ids are a private implementation detail of how Ruby executes 
the code "under the hood", and may differ depending on your specific environment, 
Ruby version, etc. There's no guarantee that an object will have the same object id 
in two different runs of the program, so never rely on the specific value of the id).
This is for strings. Remember that integers are immutable.



Courses
Forum (10+)
Events (14)
Sharing (5)
Videos (1)
Resources
Exercises
Pages
Archives
Chat Room
My Account
My Assessments
Sign Out
CoursesRB101 Programming Foundations with Ruby: BasicsLesson 3: Practice Problems5. Practice Problems: Medium 2
Give us your feedback
Practice Problems: Medium 2
Question 1
Every object in Ruby has access to a method called object_id, which returns a numerical value that uniquely identifies the object. This method can be used to determine whether two variables are pointing to the same object.

Take a look at the following code and predict the output:

Copy Code
a = "forty two"
b = "forty two"
c = a

puts a.object_id
puts b.object_id
puts c.object_id
Solution 1
Copy Code
puts a.object_id # 60
puts b.object_id # 80
puts c.object_id # 60
When you run the code, the exact object ids may differ; however, the output should make it clear that a and b reference different objects. Don't be deceived by appearances — the two objects look the same (ie, they both have the value "forty two") but they are still different objects.

Meanwhile, the object ids show that a and c reference the same object. This is because c was initialized to the object referenced by a. No surprises here.

(Object ids are a private implementation detail of how Ruby executes the code "under the hood", and may differ depending on your specific environment, Ruby version, etc. There's no guarantee that an object will have the same object id in two different runs of the program, so never rely on the specific value of the id).

Question 2
Let's take a look at another example with a small difference in the code:

Copy Code
a = 42
b = 42
c = a

puts a.object_id
puts b.object_id
puts c.object_id
Solution 2
Copy Code
puts a.object_id # 85
puts b.object_id # 85
puts c.object_id # 85
That's weird... b wasn't explicitly initialized to the object referenced by a, but they have the same object id. What's going on?

It turns out that this has to do with how integers are immutable; that is, the value of an integer object cannot be mutated. In Ruby, each integer is a single immutable object (eg, there can only ever be one integer 1 object, one integer 2 object, and so on). As a result, a, b, and c all reference the same immutable integer 42 object. Any operation on an integer simply returns a new integer object.

Note that for performance reasons, true, false and nil are also handled specially (eg, every instance of true will all have the same object id). This also has to do with the immutability of true, false and nil.

Question 3
Let's call a method, pass two strings as arguments and see how they can be treated differently depending on the method invoked on them inside the method definition.

Study the following code and state what will be displayed...and why:
=end

# def tricky_method(string_param_one, string_param_two)
#   string_param_one += "rutabaga"
#   string_param_two << "rutabaga"
# end
# 
# string_arg_one = "pumpkins"
# string_arg_two = "pumpkins"
# tricky_method(string_arg_one, string_arg_two)
# 
# puts "String_arg_one looks like this now: #{string_arg_one}"
# puts "String_arg_two looks like this now: #{string_arg_two}"

=begin
String_one looks like this now: pumpkins
String_two looks like this now: pumpkinsrutabaga
Why? It seems clear from the above that Ruby treats the two string arguments
differently...but not so fast. Actually the arguments are treated in exactly 
the same way...but the results are different.

In both cases, Ruby passes the arguments "by value", but unlike some other 
languages, the value that gets passed is a reference to some object. The 
string arguments are passed to the method as references to objects of type String.

The important distinction is that while a reference is passed, the method 
initializes new local variables for both strings and assigns each reference to 
the new local variables. These are variables that only live within the scope of
the method definition.

So, if both arguments live inside the method as new variables that store a 
reference to the passed objects...why don't the strings behave the same way 
in our output?

The difference lies in what Ruby does when the program executes either a 
String#+= operation or a String#<< operation.

The String#+= operation is re-assignment and creates a new String object. 
The reference to this new object is assigned to string_param_one. The local 
variable string_param_one now points to "pumpkinsrutabaga", not "pumpkins".
It has been re-assigned by the String#+= operation. This means that 
string_param_one and string_arg_one no longer point to the same object.

On the other hand, String#<< mutates the calling object. Therefore, 
string_param_two << "rutabaga" mutates the object referenced by 
string_param_two, so that it becomes "pumpkinsrutabuga". So, because the 
local variable string_param_two still points to the original object, the local 
variables string_arg_two and string_param_two are still pointing at the same 
object, and we see the results of what happened to the array "outside" of the method.
=end

=begin
To drive that last one home...let's turn the tables and have the string show a 
modified output, while the array thwarts the method's efforts to modify the 
user's version of it.
=end

# def tricky_method_two(a_string_param, an_array_param)
#   a_string_param << 'rutabaga'
#   an_array_param = ['pumpkins', 'rutabaga']
# end
# 
# my_string = "pumpkins"
# my_array = ["pumpkins"]
# tricky_method_two(my_string, my_array)
# 
# puts "My string looks like this now: #{my_string}"
# puts "My array looks like this now: #{my_array}"

=begin
As you can see, we have achieved the opposite effect from our last example.

We are still passing in the same two string and array arguments, but the results
are the opposite, because our method does the "same thing" to each, but in a 
different way than before. That is, in both cases, the method attempts to change
the string from "pumpkins" to "pumpkinsrutabaga" and add "rutabaga" to the array.

Despite the similarity of the results inside the method definition, the results
outside the method definition are the opposite.

As before, the explanation is all about what Ruby does with a variable when we 
change the object it points to. Does it create a new object? Or is it able to 
just modify the existing object? In this case, our literal ['pumpkins', 'rutabaga']
array is a new object, and we are assigning it to the local variable an_array_param.
=end

# Question 5: Depending on a method to modify its arguments can be tricky:
# def tricky_method(a_string_param, an_array_param)
#   a_string_param += "rutabaga"
#   an_array_param << "rutabaga"
# end
# 
# my_string = "pumpkins"
# my_array = ["pumpkins"]
# tricky_method(my_string, my_array)
# 
# puts "My string looks like this now: #{my_string}"
# puts "My array looks like this now: #{my_array}"

=begin
Whether the above "coincidentally" does what we think 
we wanted depends upon what is going on inside the method.

How can we change this code to make the result easier to
predict and easier for the next programmer to maintain? 
That is, the resulting method should not mutate either 
argument, but my_string should be set to 'pumpkinsrutabaga'
and my_array should be set to ['pumpkins', 'rutabaga']
=end
=begin
def not_so_tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param += ["rutabaga"]

  return a_string_param, an_array_param
end

my_string = "pumpkins"
my_array = ["pumpkins"]
my_string, my_array = not_so_tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"
=end
# Note that line 10 of this solution demonstrates multiple 
# assignment. Specifically, #not_so_tricky_method returns two values, 
# these are assigned to local variables my_string and my array, respectively.

=begin
Question 6
How could the following method be simplified without changing its return value?

Copy Code
def color_valid(color)
  if color == "blue" || color == "green"
    true
  else
    false
  end
end
Solution 6
Ruby will automatically evaluate statements, so this method:

Copy Code
def color_valid(color)
  if color == "blue" || color == "green"
    true
  else
    false
  end
end
Can be significantly simplified by changing it to just:

Copy Code
def color_valid(color)
  color == "blue" || color == "green"
end
Both of these methods do exactly the same thing - but one is much more complex to read.
=end