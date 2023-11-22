# build RPS, then add a loop, then abreviations, then a tally

CHOICES = %w(rock paper scissors)
ABREVIATIONS = %w(r p s)

def prompt(message)
  puts "==> #{message}"
end

def prompt2(message)
  puts "==========> #{message} <=========="
end

user_choice = nil
comp_tally = 0
user_tally = 0

prompt("Welcome. Want to play a game? If so, tell me your name:")
name = gets.chomp.capitalize
prompt("Hi #{name}!") 

loop do
  loop do
    prompt("Pick one: #{CHOICES.join(', ')}:")
    user_choice = gets.chomp.downcase
    break if CHOICES.include?(user_choice) || ABREVIATIONS.include?(user_choice)
    prompt("Hmmm. Something went wrong. Lets try this again.")
  end
  
  if user_choice.length == 1
    idx = ABREVIATIONS.index(user_choice)
    user_choice = CHOICES[idx]
  end

  sleep 0.5

  comp_choice = CHOICES.sample
  prompt("You picked '#{user_choice}' and the computer picked '#{comp_choice}', which means...")

  sleep 0.5

  if user_choice == 'rock'     && comp_choice == 'scissors' ||
     user_choice == 'paper'    && comp_choice == 'rock'     ||
     user_choice == 'scissors' && comp_choice == 'paper'
    user_tally += 1
    prompt2("you won!")
  elsif user_choice == comp_choice
    prompt2("It's a tie.")
    next
  else
    comp_tally += 1
    prompt2("The computer won.")
  end
  
  if user_tally == 1
    prompt("That's 1 win for you and #{comp_tally} for the computer so far.")
  else
    prompt("Thats a total of #{user_tally} wins for you and #{comp_tally} for the computer so far.")
  end

  break if comp_tally == 3 || user_tally == 3
  prompt("Want to play again?")
  answer = gets.chomp.downcase
  break unless answer.start_with?('y')
  prompt("Awesome!")
end

prompt2("The computer is the GRAND WINNER!") if comp_tally == 3
prompt2("Congratulations! You are the GRAND WINNER!") if user_tally == 3
prompt2("Thanks for playing!")
