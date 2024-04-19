# Using ruby ranges, it is necessary to implement the play_game(player_score, dealer_score) method, which returns the result of the Black Jack game depending on the value of the player's player_score and dealer_score points.

# Two players take part in the game - the player and the dealer, the one who has more points, but not more than 21, wins.

# Depending on the scored points, the method returns a message with the result of the game, the following options are possible:

# - if the player has scored 21 points and the dealer has fewer points, the game ends with the message "Black Jack!"

# - if the player scored more points than the dealer returns "You win!"

# - if the player scored less points than the dealer returns "You lose!"

# - if the player and the dealer have the same number of points, "Draw" is returned



# Additional game rules.

# If the player has 21 points and the dealer also has 21 points, the game ends in a "Draw".

# If a player has 22 or more points, he has lost.

# If the player's points are less than the dealer's points and the dealer's points are less than 21, then the player has lost, otherwise the player has won.

# If the player's points are greater than the dealer's points and the player's points are less than 22, then the player has won.

def play_game(player_score, dealer_score)
  if player_score == 21
    return dealer_score == 21 ? "Draw" : "Black Jack!"
  elsif player_score > 21
    return "You lose!"
  elsif dealer_score > 21
    return "You win!"
  elsif player_score < dealer_score && dealer_score < 21
    return "You lose!"
  elsif player_score > dealer_score && player_score < 22
    return "You win!"
  else
    return "Draw"
  end
end


p play_game(21,20)  #    "Black Jack!"

p play_game(22,24)  #    "You lose!"

p play_game(15,14)  #    "You win!"

p play_game(16,16)  #    "Draw"
p play_game(12,22)
