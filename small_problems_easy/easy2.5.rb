puts "What's your name?"
name = gets.chomp

  if name.include? '!'
    name = name.chop
    puts "HELLO #{name.upcase}. WHY ARE WE SCREAMING?"
  else
    puts "Hello #{name.capitalize!}."
  end


puts name