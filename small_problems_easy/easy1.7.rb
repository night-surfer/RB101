def prompt(message)
  puts ">> #{message}"
end

prompt "Enter a noun:"
noun = gets.chomp
prompt "Enter a verb:"
verb = gets.chomp
prompt "Enter an adjective:"
adjective = gets.chomp
prompt "Enter an adverb:"
adverb = gets.chomp

sententce_1 = "Do you #{verb} your #{adjective} #{noun} #{adverb}? Wow!"
sententce_2 = "Would you like to #{verb} with a #{adjective} #{noun} very #{adverb}? Wow!"
sententce_3 = "Can we please #{verb} all of the #{adjective} #{noun}'s' #{adverb}? Wow!"

prompt [sententce_1, sententce_2, sententce_3].sample