def prompt(message)
  puts("=> #{message}")
end

def valid_input?(num)
  if num.empty? || num.to_f < 0
    prompt("Sorry, must be a number, and no negative numbers will work.")
  end
end

loop do
  prompt("Welcome to the mortgage calculator!")
  prompt("-----------------------------------")

  prompt("What is the loan amount?")
  loan = ''
  loop do
    loan = gets.chomp
    break unless valid_input?(loan)
  end

  prompt("What is the interest rate?")
  prompt("If 5%, enter 5, or 5.5")
  interest_rate = ''
  loop do
    interest_rate = gets.chomp
    break unless valid_input?(interest_rate)
  end

  prompt("What is the length of the loan in years?")
  years = ''
  loop do
    years = gets.chomp
    break unless valid_input?(years)
  end

  yearly_interest_rate = interest_rate.to_f / 100
  monthly_interest_rate = yearly_interest_rate / 12
  duration = years.to_i * 12

  monthly_payment = loan.to_f * (monthly_interest_rate /
                    (1 - (1 + monthly_interest_rate)**(-duration)))

  prompt("Your monthly payment would be #{monthly_payment}.")
  prompt("Want to calculate another mortgage? (Press Y to continue)")
  ans = gets.chomp.downcase
  break unless ans == 'y'
end

prompt("Have a great day!")
