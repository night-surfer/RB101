def prompt(message)
  puts "=> #{message}"
end

def valid_num?(number)
  number.to_i != 0
end

def operation_to_msg(op)
  choice = case op # setting 'choice' as a variable allows us to add to this methodvif we need to without having to mess with the case statement!
    when '1' then 'Adding'
    when '2' then 'Subtracting'
    when '3' then 'Multiplying'
    when '4' then 'Dividing'
  end
# You can add to this method here: x = 'a random line of code'
  choice
end

prompt("Welcome to Calculator. Please tell me your name")
name = gets.chomp

loop do
  break unless name.empty?
  prompt("Make sure to put in your name.")
  name = gets.chomp
end

prompt("Hi there #{name}!")

loop do
  num1 = nil
  num2 = nil
  loop do
    prompt("gimme a number")
    num1 = gets.chomp.to_i

    prompt("ok, gimme another")
    num2 = gets.chomp.to_i
    break if valid_num?(num1) && valid_num?(num2)
    prompt("Sorry, one of those is not right. please enter valid numbers")
  end
  prompt("what operation do you want?
        1) add
        2) subtract
        3) multiply
        4) divide")

  operation = ''
  loop do
    operation = gets.chomp
    break if %w(1 2 3 4).include?(operation)
    prompt("Must choose 1, 2, 3, or 4. Try again.")
  end

  prompt("#{operation_to_msg(operation)} the two numbers...")
  case operation.to_i
  when 1 then prompt("ok, #{num1} + #{num2} = #{num1 + num2}")
  when 2 then prompt("ok, #{num1} - #{num2} = #{num1 - num2}")
  when 3 then prompt("ok, #{num1} * #{num2} = #{num1 * num2}")
  when 4 then prompt("ok, #{num1} / #{num2} = #{num1.to_f / num2.to_f}")
  end
  prompt("would you like to do another one? (press 'y' to continue)")
  response = gets.chomp
  break unless response.downcase.start_with?('y')  # could also do: break if response.downcase != 'y'
  prompt("ok, lets do this!")
end

prompt("no prob...lamo")
