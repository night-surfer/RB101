# Alphabetical Numbers
#WORD_NUMBERS = %w( zero one two three four five six seven eight nine ten
#                eleven twelve thirteen fourteen fifteen sixteen seventeen 
#                eighteen nineteen)
##puts WORD_NUMBERS
#def alphabetic_number_sort(numbers)
#  numbers.sort_by  { |num| WORD_NUMBERS[num] }
#end

#this helps break it down a little bit:
WORDS = %w(zero one two three four five six seven eight nine ten eleven 
twelve thirteen fourteen fifteen sixteen seventeen eighteen ninenteen)

def alphabetic_number_sort(numbers)
  result = []                         # WORDS[num] (line below) retrieves the word representation of the current number (num) from the WORDS array. The num value is used as an index to access the corresponding word in the array.
  numbers.each { |num| result << WORDS[num]}  # this block is appending the word representation of the number to the result array. So at this point, the result array is now filled with word representations of the numbers.
  #result   # this isnt part of the code. but include this to see the array: => ["zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten", "eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "ninenteen"]
            # by this point, 1 is linked with one in the result array, 2 is linked with two, and so on...
  result.sort.map! { |word| word = WORDS.index(word)}   #
end


p alphabetic_number_sort((0..19).to_a)

#p alphabetic_number_sort((0..19).to_a) == [
#  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
#  6, 16, 10, 13, 3, 12, 2, 0
#]