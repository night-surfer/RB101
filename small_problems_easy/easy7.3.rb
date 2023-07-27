# Capitalize Words

def word_cap(string)
  #string.split
  words_array = string.split.map! do |word|
  word.capitalize!
  end
  words_array.join(' ')
end

p word_cap('four score and seven')     #== 'Four Score And Seven'
word_cap('the javaScript language')  #== 'The Javascript Language'
word_cap('this is a "quoted" word')  #== 'This Is A "quoted" Word'