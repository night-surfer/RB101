# Palindromic Numbers
#def palindromic_number?(num)
#  return num.to_s == num.to_s.reverse
#  #num.to_s.reverse   # this is for me to see the printout, which gives strings, not integers
#end

def palindromic_number?(num)
  num.to_s == num.to_s.reverse
end


p palindromic_number?(34543) #== true
p palindromic_number?(123210) #== false
p palindromic_number?(22) #== true
p palindromic_number?(5) #== true