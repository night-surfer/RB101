#def palindrome?(word)
#  word == word.reverse
#end

def real_palindrome?(word)
  word = word.downcase.delete('^a-z0-9')
  if word == word.reverse
    puts "The string '#{word}' is a palindrome!"
  else
    puts "I'm sorry, but '#{word}' reverses to '#{word.reverse}' and is not a palindrome."
  end
end


real_palindrome?('madam') #== true
#real_palindrome?('Madam') #== true           # (case does not matter)
#real_palindrome?("Madam, I'm Adam") #== true # (only alphanumerics matter)
#real_palindrome?('356653') #== true
#real_palindrome?('356a653') #== true
real_palindrome?('123ab321') #== false
real_palindrome?('madamax')