def prompt(message)
  Kernel.puts("=> #{message}")
end

loop do
  prompt("Welcome to Mortgage Calculator!")
  prompt("We have a few questions for you to answer:")
  prompt("-------------------------------")
  prompt("What is the loan amount?")

  loan_amount = ''
  loop do
    loan_amount = gets.chomp

    if loan_amount.empty? || loan_amount.to_f < 0
      prompt("Must enter a positive number.")
    else
      break
    end
  end

  prompt("What is the interest rate?")
  prompt("(Example: 5 for 5% or 2.5 for 2.5%)")

  interest_rate = ''

  loop do
    interest_rate = Kernel.gets.chomp

    if interest_rate.empty? || interest_rate.to_f < 0
      prompt("Must enter a positive number.")
    else
      break
    end
  end

  prompt("What is the loan duration in years?")
  loan_duration = ''

  loop do
    loan_duration = Kernel.gets.chomp

    if loan_duration.empty? || loan_duration.to_i < 0
      prompt("Must enter a valid number.")
    else
      break
    end
  end

  annual_interest_rate = interest_rate.to_f / 100
  monthly_interest_rate = annual_interest_rate / 12
  months = loan_duration.to_i * 12

  monthly_payment = loan_amount.to_f *
                    (monthly_interest_rate /
                    (1 - (1 + monthly_interest_rate)**(-months)))

  prompt("The monthly payment will come out to #{monthly_payment}")

  prompt("Another calculation?")
  answer = Kernel.gets().chomp()

  break unless answer.downcase().start_with?('y')
end

prompt("Thank you for using the Mortgage Calculator!")
prompt("Good bye!")
