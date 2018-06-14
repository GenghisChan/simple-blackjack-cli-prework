def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(total)
 puts "Your cards add up to #{total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  sum = deal_card + deal_card
  display_card_total(sum)
  sum
end

def hit?(n)
  prompt_user
  response = get_user_input

  if response == 's'
    n
  elsif response == 'h'
    n += deal_card
  else
    invalid_command
    prompt_user
end
  n
end

def invalid_command
  "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner

  welcome
  initial_round
  until n > 21
  hit?
  display_card_total
  end_game

end
end
