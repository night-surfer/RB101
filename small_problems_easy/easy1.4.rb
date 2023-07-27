# 1.4 What's my Bonus?
# if a boolean is true, calculate a bonus that is half of the salary. If the
#boolean is false, the bonus should be 0

#this is the basic way to solve this
def calculate_bonus(salary, boolean)
  if boolean == true
    bonus = salary / 2
  else
    bonus = 0
  end
end

#this uses a ternary as a conditional    
def calculate_bonus(salary, bonus)
  bonus ? (salary / 2) : 0 #this is saying, if the bonus is true, divide the salary by 2. If false, output 0
#arg 2  ?  true        : false
end  
  
# OR, if you also want to add the salary and the bonus together:
#def calculate_bonus(salary, bonus)
#  bonus ? (salary + salary / 2) : (salary + 0) 
#end   

puts calculate_bonus(2800, true)  == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000

