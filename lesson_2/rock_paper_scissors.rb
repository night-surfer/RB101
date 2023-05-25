VALID_CHOICES = ['rock', 'paper', 'scissors']

def prompt(message)
  Kernel.puts("=> #{message}")
end

def win?(first, second)
  (first == 'rock' && second == 'scissors') ||
    (first == 'paper' && second == 'rock') ||
    (first == 'scissors' && second == 'paper')
end

def display_results(player, computer)
  if win?(player, computer)
    prompt("You won!")
  elsif win?(computer, player)
    prompt("The computer won.")
  else
    prompt("It's a tie!")
  end
end

loop do
  choice = ''
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}?")
    choice = Kernel.gets().chomp()

    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("That's not a valid choice.")
    end
  end

  computer_choice = VALID_CHOICES.sample
  prompt("You chose: #{choice}; Computer chose: #{computer_choice}")

  display_results(choice, computer_choice)

  prompt("Want to play again? Press Y to continue:")
  ans = gets.chomp.downcase
  break unless ans.start_with?('y')
end

prompt("Thanks for playing")
