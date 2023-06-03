puts "What is the bill?"
bill = gets.chomp.to_f
puts "What is the tip percentage?"
percent = gets.chomp.to_f / 100

tip = sprintf("%.2f",(bill * percent))
total = sprintf("%.2f",(tip.to_f + bill))
puts "The tip is $#{tip}"
puts "The total is $#{total}"