# Lettercase Counter

def letter_case_count(string)
  count = {}                  #this creates the hash to be used
  character = string.chars    #this separates the string into individual characters. But it is still a string so the numbers are not integers
  count[:lowercase] = character.count { |char| char =~ /['a-z']/ }  #creates a 'lowercase KEY', and then uses regex to count all letters a-z
  count[:uppercase] = character.count {|char| char =~ /[A-Z]/ }
  count[:neither] = character.count { |char| char =~ /[^a-zA-Z]/ }  # remember this is the symbol '^' to exclude anything that follows it.
  count  #this will output the 'count' hash with all the keys and values created above.
end

p letter_case_count('abCdef 123')     == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef')       == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123')            == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('')               == { lowercase: 0, uppercase: 0, neither: 0 }