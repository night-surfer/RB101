def prompt(message)
  puts ">> #{message}"
end
  
prompt "Enter the length of the room in meters:"
length = gets.chomp.to_f
prompt "Enter the width of the room in meters:"
width = gets.chomp.to_f

square_meters = (length * width).round(2) 
square_feet = sprintf("%.2f",(square_meters * 10.7639))
prompt "The area of the room is #{square_meters} square meters (#{square_feet} square feet)."