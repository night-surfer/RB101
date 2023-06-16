# Letter Counter (Part 1)

def word_sizes(string)
  counts = Hash.new(0)
  string.split.each do |word|
    counts[word.size] +=1
  end
  counts
end

#def word_sizes(string)  What I was originally trying
  #string.split                           #should've been:  ind_words = string.split
  #ind_words = string.map do |word|       #should've been:  ind_words.map! do |words|
  #  word.size                            #should've been:  words.size
  #end
  #ind_words 
#end

# This is what I was trying to do I think:
#def word_sizes(sentence)
#  arr = sentence.split
#  arr.map! { |word| word.size }
# hash = Hash.new(0)
# arr.each do |size|
#   hash[size] += 1
# end
# hash
#end


p word_sizes('Four score and seven.') #== { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') #== { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") #== { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') #== {}