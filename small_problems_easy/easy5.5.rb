# Clean up the words
#def cleanup(string)
#  string.gsub(/[^a-z]/, ' ').squeeze(" ")
#end

#could also do it this way
ALPHABET = ('a'..'z').to_a   #to_a converts something to an array

def cleanup(string)
  clean_chars = []
  
  string.chars.each do |char|
    if ALPHABET.include?(char)
      clean_chars << char  #This is sending just (a..z) to the new array. But alone there would be no spaces at all when adding clean_cars on line 20. 
    else
      clean_chars << ' ' unless clean_chars.last == ' '  #this doesn't actually do anything without line 20: clean_chars
     #clean_chars << ' ' #unless clean_chars.last == ' '  # play around with this line a bit. The unless part is the nuts and bolts for removing the extra blank spaces
    end
  end
  clean_chars.join  #try removing join with different parts of other code to see the raw results
end

p cleanup("---what's my +*& line?") #== ' what s my line '