# rps2.0.rb

require 'yaml'
MESSAGES = YAML.load_file('rps2.0_messages.yml')

CHOICES = %w(rock paper scissors lizard spock)
ABBREVIATIONS = %w(r p s l sp)
user_choice = ''
user_tally = 0
computer_tally = 0

def prompt(message)
  puts "==> #{message}"
end

def prompt2(message)
  puts "============> #{message} <============"
end

def rules_needed?
  prompt(MESSAGES['need_rules?'])
  rule_response = gets.chomp.downcase
  if rule_response.start_with?('y')
    nil
  else
    prompt(MESSAGES['rock_wins'])
    sleep 1.5
    prompt(MESSAGES['paper_wins'])
    sleep 1.5
    prompt(MESSAGES['scissors_wins'])
    sleep 1.5
    prompt(MESSAGES['spock_wins'])
    sleep 1.5
    prompt(MESSAGES['lizard_wins'])
    sleep 1.5
    puts ""
  end
end

def abbreviate(input)
  if input.length <= 2
    idx = ABBREVIATIONS.index(input)
    input = CHOICES[idx]
  end
  input
end

def get_user_choice
  user_response = ''
  loop do
    puts ''
    prompt(MESSAGES['user_options'])
    puts(MESSAGES['user_abbreviated_options'])
    user_response = gets.chomp.downcase

    break if CHOICES.include?(user_response) ||
             ABBREVIATIONS.include?(user_response)
    prompt(MESSAGES['choice_error'])
  end
  abbreviate(user_response)
end

def who_won?(win, lose)
  winner = {
    "rock" => ['scissors', 'lizard'],
    "paper" => ['rock', 'spock'],
    "scissors" => ['paper', 'lizard'],
    "lizard" => ['paper', 'spock'],
    "spock" => ['rock', 'scissors']
  }

  winner[win].include?(lose)
end

def display_results(user, computer)
  puts ''
  if who_won?(user, computer)
    prompt2(MESSAGES['you_won'])
  elsif who_won?(computer, user)
    prompt2(MESSAGES['computer_won'])
  else
    prompt2(MESSAGES['tie'])
  end
  puts ''
end

def display_tally(user_tally, computer_tally)
  if user_tally == 0 && computer_tally == 0
    nil
  elsif user_tally == 1
    prompt(format(MESSAGES['tallied_plural_score'],
                  user_tally: user_tally,
                  computer_tally: computer_tally))
  end
end

def display_grand_winner(user_tally, computer_tally)
  puts ''
  prompt2(MESSAGES['you_won_match']) if user_tally == 3
  prompt2(MESSAGES['computer_won_match']) if computer_tally == 3
  puts ''
  prompt(MESSAGES['play_again?'])
end

prompt(MESSAGES['welcome'])
rules_needed?
prompt(MESSAGES['best_of_three'])

loop do
  loop do
    user_choice = get_user_choice
    computer_choice = CHOICES.sample
    prompt(format(MESSAGES['display_choices'],
                  user_choice: user_choice,
                  computer_choice: computer_choice))

    display_results(user_choice, computer_choice)

    if who_won?(user_choice, computer_choice)
      user_tally += 1
    elsif who_won?(computer_choice, user_choice)
      computer_tally += 1
    end

    display_tally(user_tally, computer_tally)

    break if user_tally == 3 || computer_tally == 3
  end

  display_grand_winner(user_tally, computer_tally)
  answer = gets.chomp.downcase
  break unless answer.start_with?('y')
  user_tally = 0
  computer_tally = 0
end

prompt(MESSAGES['goodbye'])
