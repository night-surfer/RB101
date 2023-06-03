def age_choice
  name = get_a_name
  puts "Today #{name} is #{rand(20..200)} years old!"
end

def get_a_name
  puts "Pick a name please:"
  name = gets.chomp
  name.empty? ? "Teddy" : name.capitalize!
end



age_choice