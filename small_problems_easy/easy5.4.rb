# Letter Swap

def swap(string)
  ans = string.split.map do |word|
  word[0], word[-1] = word[-1], word[0]
  word
  end
  ans.join(' ')
end

#def swap(string)
#  string
#  ans = string.split.map
#  
#end

p swap('Oh what a wonderful day it is') #== 'hO thaw a londerfuw yad ti si'
p swap('Abcde') #== 'ebcdA'
p swap('a')# == 'a'