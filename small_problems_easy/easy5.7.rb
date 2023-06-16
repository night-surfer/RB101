# Letter Counter (Part 2)
def word_sizes(string)
  counts = Hash.new(0)
  string.split.each do |word|
    clean_word = word.delete('^A-Za-z')   #create a new array, and delete any char that isn't an A-Z or a-z
    counts[clean_word.size] +=1           # then move the new array into the 'counts' array and determine the size
  end
  counts
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}