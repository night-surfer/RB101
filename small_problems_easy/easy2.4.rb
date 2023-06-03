puts "What is your age?"
age = gets.chomp.to_i
puts "At what age would you like to retire?"
retire_desire = gets.chomp.to_i
current_year = Time.now.year
years_left = retire_desire - age
retire_year = 2023 + years_left


puts "It's #{current_year}. You will retire in #{retire_year}."
puts "You have only #{years_left} years of work to go!"