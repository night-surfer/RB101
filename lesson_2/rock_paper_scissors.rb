# Build it, ask to play again, test, add abreviations,
# add valid word, add tally count
CHOICES = %w(rock paper scissors)
ABREVIATIONS = %w(r p s)
user_choice = nil
comp_choice = nil
user_tally = 0
comp_tally = 0

def prompt(message)
  puts "==> #{message}"
end

def prompt2(message)
  puts "==============> #{message} <=============="
end

def who_won?(winner, loser)
  (winner == 'rock' && loser == 'scissors') ||
    (winner == 'paper'    && loser == 'rock') ||
    (winner == 'scissors' && loser == 'paper')
end

def display_results(user, comp)
  if who_won?(user, comp)
    prompt2("You won!")
  elsif who_won?(comp, user)
    prompt2("The computer won.")
  else
    prompt2("It's a tie!")
  end
end

prompt("Welcome to #{CHOICES.join(', ')}. Let's play best two out of three.")
loop do
  loop do
    loop do
      prompt("Here we go. Pick one: #{CHOICES.join(', ')}")
      user_choice = gets.chomp.downcase
      break if CHOICES.include?(user_choice) ||
               ABREVIATIONS.include?(user_choice)
      prompt("Hmmmm. Looks like something went wrong. Lets try that again.")
    end

    if user_choice.length == 1
      idx = ABREVIATIONS.index(user_choice)
      user_choice = CHOICES[idx]
    end

    comp_choice = CHOICES.sample

    sleep 0.5

    display_results(user_choice, comp_choice)
    prompt("You picked #{user_choice} and the computer chose #{comp_choice}...")

    if who_won?(user_choice, comp_choice)
      user_tally += 1
    elsif who_won?(comp_choice, user_choice)
      comp_tally += 1
    end

    if user_tally == 0 && comp_tally == 0
      next
    elsif user_tally == 1
      prompt("Which means #{user_tally} win for you" \
             "and #{comp_tally} for the computer.")
    else
      prompt("Which totals #{user_tally} wins for you" \
             "and #{comp_tally} for the computer.")
    end

    break if user_tally == 3 || comp_tally == 3
  end

  system("clear")

  prompt2("You are the GRAND WINNER!") if user_tally == 3
  prompt2("Sorry, the computer is the GRAND WINNER!") if comp_tally == 3
  user_tally = 0
  comp_tally = 0
  puts ""
  prompt("Want to play again?")
  answer = gets.chomp.downcase
  break unless answer.start_with?('y')
  prompt("I was hoping you would say that!")
end

prompt2("Thanks for playing!")
