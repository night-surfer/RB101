numbers = []

puts "==> Enter the 1st number:"
numbers << gets.chomp.to_i
puts "==> Enter the 2nd number:"
numbers << gets.chomp.to_i
puts "==> Enter the 3rd number:"
numbers << gets.chomp.to_i
puts "==> Enter the 4th number:"
numbers << gets.chomp.to_i
puts "==> Enter the 5th number:"
numbers << gets.chomp.to_i
puts "==> Enter the last number:"
last_numbers = gets.chomp.to_i

if numbers.include? last_numbers
  puts "included in #{numbers}."
else
  puts "nope"
end
