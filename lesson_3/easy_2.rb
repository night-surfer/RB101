# Q1 see if "Spot" is present.
#ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
#p "yes" if ages.key?("Lily")
#p "yes" if ages.include?("Lily")
#p "yes" if ages.member?("Lily")
#p ages["Lily"]

# Q2 Convert the string in the following ways (code will be executed on original munsters_description above):
# munsters_description = "The Munsters are creepy in a good way."
# #"tHE mUNSTERS ARE CREEPY IN A GOOD WAY."
# p munsters_description.swapcase
# #"The munsters are creepy in a good way."
# p munsters_description.capitalize
# #"the munsters are creepy in a good way."
# p munsters_description.downcase
# #"THE MUNSTERS ARE CREEPY IN A GOOD WAY."
# p munsters_description.upcase

#Q3 add ages for Marilyn and Spot to the existing hash
# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }
# additional_ages = { "Marilyn" => 22, "Spot" => 237 }
# ages.merge!(additional_ages)
# p ages

# Question 4  See if the name "dino" appears in the string below:
# advice = "Few things in life are as important as house training your pet dinosaur."
# puts "yes" if advice =~ /dino/  #or
# puts "yes" if advice.match?('dino')

# Question 5 Show an easier way to write this array:
# flintstones = ["Fred", "Barney", "Wilma", "Betty", "BamBam", "Pebbles"]
# flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# Question 6 How can we add the family pet "Dino" to our usual array:
# flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
# flintstones << "Dino"
# p flintstones

# Question 7 How can we add multiple items to our array? (Dino and Hoppy)
# flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
# flintstones.push("Dino", "Hoppy")
# flintstones << ["Dino", "Hoppy"]
# flintstones.flatten!
# flintstones.concat(%w(TTTT PPPP))  # concat adds an array rather than one item
# p flintstones
 
# Question 8  Shorten the following sentence:
# Review the String#slice! documentation, and use that method to make the return 
# value "Few things in life are as important as ". 
# But leave the advice variable as "house training your pet dinosaur.".
# advice = "Few things in life are as important as house training your pet dinosaur."
# #intro = advice.slice!("Few things in life are as important as ") 
#    #OR
# intro = advice.slice!(0, advice.index('house'))
# p advice
# p intro

# Question 9
# Write a one-liner to count the number of lower-case 't' characters in the following string:
#statement = "The Flintstones Rock!"
#t_count = statement.count('t')
#p t_count

# Q 10 how could we easily center that title above the table with spaces?
# title = "Flintstone Family Members"
# p title.center(40)