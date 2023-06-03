
puts "Please write a word or multiple words:"
ans = gets.chomp
characters = ans.delete(' ').length
puts "There are #{characters} characters in the word #{ans}"


# Here is someone elses example I like:

#print "Please write a word or multiple words: "
#
#words = gets.chomp
#words_array = words.split
#
#num_chars = 0
#words_array.each { |word| num_chars += word.size }
#
#puts "There are #{num_chars} characters in \"#{words}\"."