def prompt(message)
  Kernel.puts("=> #{message}")
end

def valid_number?(num)
  num.to_i() != 0
end

def operation_to_message(op)
  case op
  when '1'
    'Adding'
  when '2'
    'Subtracting'
  when '3'
    'Multiplying'
  when '4'
    'Dividing'
  end
end

prompt("Welcome to Calculator. Enter your name:")
name = ''
loop do
  name = Kernel.gets().chomp().capitalize!

  if name.empty?()
    prompt("Make sure to enter a name.")
  else
    break
  end
end

prompt("Hi #{name}!")
loop do # main loop
  number1 = ''
  number2 = ''

  loop do
    prompt("What's the first number please?")
    number1 = Kernel.gets().chomp()

    break if valid_number?(number1)
    prompt("Hmm, that doesn't look like a valid number, please try again.")
  end

  loop do
    prompt("What's the second number please?")
    number2 = Kernel.gets().chomp()

    break if valid_number?(number2)
    prompt("Hmm, that doesn't look like a valid number, please try again.")
  end

  operator_prompt = <<-MSG
 What operation would you like to perform?
    1) add
    2) subtract
    3) multiply
    4) divide
  MSG

  prompt(operator_prompt)
  operator = ''
  loop do
    operator = gets().chomp()
    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt("Must choose 1,2,3, or 4")
    end
  end

  prompt("#{operation_to_message(operator)} the two numbers...")

  result = case operator
           when '1'
             number1.to_i() + number2.to_i()
           when '2'
             number1.to_i() - number2.to_i()
           when '3'
             number1.to_i() * number2.to_i()
           when '4'
             number1.to_f() / number2.to_f()
           end

  prompt("The result is #{result}")

  prompt("Do you want to perform another operation? (y to do another)")
  ans = gets().chomp().downcase

  break if ans != "y"
end

prompt("OK! Thanks #{name} for using this calculator.")
