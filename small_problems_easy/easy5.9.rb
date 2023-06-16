# ddaaiillyy ddoouubbllee
# this doesn't work. it is what I started with
#def crunch(string)
#  array = []
#  string.each_char do |char|
#    array << char unless array.include?(char)
#  end
#  array
#end

# the way this person did this makes sense:

# BUT IT DOESNT WORK ON 4ABCABC !!!! SO GO BACK TO THE DRAWING BOARD ON THIS ONE!
#def crunch(string)
#  chars_array = []
#
#  string.split.each do |word|
#    chars_array << word.chars
#  end
#  chars_array.map!{|sub| sub.uniq.join}
#  chars_array.join(' ')
#end

#This is the winner
def crunch(string)
  index = 0
  no_dubbs = ""
  while index <= string.length - 1  #(Not sure why this - 1 needs to be in there? ANSWER: In Ruby, indexing starts from 0, so the last index of an array or string is always length - 1. For example, if a string has a length of 5, the valid indices are 0, 1, 2, 3, and 4.
    no_dubbs << string[index] unless string[index] == string[index + 1]      # By using text.length - 1, the loop condition ensures that the loop continues until the last character of the string is processed. Once index reaches text.length - 1, it points to the last character in the string, and the loop terminates.
    index += 1                                                            #This adjustment prevents an "out of range" error when accessing elements in the string.)
  end
  no_dubbs
end
#p crunch('ddaaiillyy ddoouubbllee') #== 'daily double'
#p crunch('4444abcabccba') #== '4abcabcba'
#p crunch('ggggggggggggggg') #== 'g'
#p crunch('a') #== 'a'
#p crunch('') #== ''

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''

