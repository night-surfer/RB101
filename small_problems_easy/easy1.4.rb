def calculate_bonus(salary, bonus)
  bonus ? (salary / 2) : 0
end

# OR, if you also want to add the salary and the bonus together:
#def calculate_bonus(salary, bonus)
#  if bonus == true
#    salary + (salary / 2)
#  else 
#    salary + 0
#  end
#end

puts calculate_bonus(2800, true)
puts calculate_bonus(1000, false)
