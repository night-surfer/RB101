#q1 # What would you expect the code below to print out?
#q1 
#q1 numbers = [1, 2, 2, 3]
#q1 numbers.uniq
#q1 
#q1 puts numbers

##q3 Replace the word "important" with "urgent" in this string:
#advice = "Few things in life are as important as house training your pet dinosaur."
#
#advice.gsub!('important', 'urgent')
#p advice

# #Q4 What do the following method calls do (assume we reset numbers to the original array between method calls)?
# numbers = [1, 2, 3, 4, 5]
# p numbers.delete_at(1)
# p numbers.delete(1)
# p numbers

# Q5 Programmatically determine if 42 lies between 10 and 100. hint: Use Ruby's range object in your solution.
#n = 42   # not what they are looking for
#if n.between?(1, 100)
#  puts "yep"
#else
#  puts "nope"
#end

#p "yes" if (1..100).cover?(42)  looking for this!

# q6 show two different ways to put the expected "Four score and " in front of it.
#famous_words = "seven years ago..."
#
#add_on = "Four score and "
#
#p add_on + famous_words
#
#p full_string = "Four score and #{famous_words}"
#p famous_words.prepend("Four score and ")  #Mutating
#p "Four score and " << famous_words        #Mutating

#Q7 Make this into an un-nested array.
#flintstones = ["Fred", "Wilma"]
#flintstones << ["Barney", "Betty"]
#flintstones << ["BamBam", "Pebbles"]
#
#p flintstones.flatten

#Q8 Create an array containing only two elements: Barney's name and Barney's number.
#flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }
#p neighbor = flintstones.assoc("Barney")

