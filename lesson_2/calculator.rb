#rubocop.calculator.rb


require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')
#puts MESSAGES.inspect
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

prompt(MESSAGES['welcome'])
name = ''
loop do
  name = Kernel.gets().chomp().capitalize!

  if name.empty?()
    prompt(MESSAGES['valid_name'])
  else
    break
  end
end

prompt("Hi #{name}!")
loop do # main loop
  number1 = ''
  number2 = ''

  loop do
    prompt(MESSAGES['first_number'])
    number1 = Kernel.gets().chomp()

    break if valid_number?(number1)
    prompt(MESSAGES['invalid_number'])
  end

  loop do
    prompt(MESSAGES['second_number'])
    number2 = Kernel.gets().chomp()

    break if valid_number?(number2)
    prompt(MESSAGES['invalid_number'])
  end

  operator_prompt = prompt(MESSAGES['operator_prompt'])

  operator = ''
  loop do
    operator = gets().chomp()
    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt(MESSAGES['operator_error'])
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

  prompt(MESSAGES['ask_again'])
  ans = gets().chomp().downcase

  break if ans != "y"
end

prompt(MESSAGES['goodbye'])
