def prompt(message)
  puts("=> #{message}")
end

loop do
  prompt("Welcome to the mortgage calculator!")
  prompt("-----------------------------------")

  prompt("What is the loan amount?")
  loan = ''

  loop do
    loan = gets.chomp
    if loan.empty? || loan.to_f < 0
      prompt("Sorry, no negative numbers.")
    else
      break
    end
  end

  prompt("What is the interest rate?")
  prompt("If 5%, enter 5, or 5.5")
  interest_rate = ''

  loop do
    interest_rate = gets.chomp
    if interest_rate.empty? || interest_rate.to_f < 0
      prompt("Sorry, no negative numbers.")
    else
      break
    end
  end

  prompt("What is the length of the loan in years?")
  years = ''

  loop do
    years = gets.chomp
    if years.empty? || years.to_i < 0
      prompt("Sorry, must put a valid year.")
    else
      break
    end
  end

  yearly_interest_rate = interest_rate.to_f / 100
  monthly_interest_rate = yearly_interest_rate / 12
  duration = years.to_i * 12

  monthly_payment = loan.to_f * (monthly_interest_rate /
                    (1 - (1 + monthly_interest_rate)**(-duration)))

  prompt("Your monthly payment would be #{monthly_payment}.")
  prompt("Want to calculate another mortgage? (Press Y to continue")
  ans = gets.chomp.downcase
  break unless ans == 'y'
end

prompt("Have a great day!")
