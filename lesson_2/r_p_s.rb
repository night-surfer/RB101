VALID_CHOICE = %w(rock paper scissors)
ABBREVIATIONS = %w(r p s)

def prompt(message)
  puts "==> #{message}"
end

player_choice = nil
user_tally = 0
comp_tally = 0

prompt("Welcome to the game 'Rock, Paper, Scissors'")
loop do
  prompt("Let's play!")
  loop do
    prompt("Please choose one: #{VALID_CHOICE.join(', ')}")
    player_choice = gets.chomp
    break if VALID_CHOICE.include?(player_choice) || ABBREVIATIONS.include?(player_choice)
    prompt("Hmmm, maybe there was a typo.")
  end  
  
  if player_choice.length == 1
    idx = ABBREVIATIONS.index(player_choice)
    player_choice = VALID_CHOICE[idx]
  end

  computer_choice = VALID_CHOICE.sample
#  ask why lines 29 through 46 won't work as a method definition????
#  who_won(player_choice, computer_choice)
  prompt("It looks like you chose #{player_choice}, and the computer chose #{computer_choice}.
    >>>>>>><<<<<<<")
  if player_choice == 'rock'     && computer_choice == 'scissors' ||
     player_choice == 'paper'    && computer_choice == 'rock' ||
     player_choice == 'scissors' && computer_choice == 'paper'
    prompt("You won!
    >>>>>>><<<<<<<")
    user_tally += 1
    prompt("So far you've won #{user_tally} times.") 
  elsif player_choice == computer_choice
    prompt("It is a tie!")
  else
    prompt("The computor won.
    >>>>>>><<<<<<<")
    comp_tally += 1
    prompt("So far the computer has won #{comp_tally} times.")
  end  

  break if user_tally == 3 || comp_tally == 3  

  prompt("Would you like to play again? (Press 'y')")
  answer = gets.chomp.downcase
  break unless answer.start_with?('y', 's')
  prompt("Sweet! I was hoping you'd say that.")
end

if comp_tally == 3
puts "+-----------------------------------+
| The Computer is the grand winner! |
+-----------------------------------+"
elsif user_tally == 3
puts "+---------------------------+
| You are the grand winner! |
+---------------------------+"
else
  prompt("Ok, thanks for playing.")
end
