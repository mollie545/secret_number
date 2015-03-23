# In this game players have three tries to guess a secret number # between 1 and 10.
# Welcome the player to your game. Let them know who created the game.

# store player's name
def get_name
  gets.strip
end

# store player's guess
def get_guess
  gets.strip.to_i
end

def verify_guess(guess, tries)
    # Manually set secret number
    secret_number = 5
    # Verify if they were correct. If the player guesses correctly they win, they should be congratulated and the game should end.
    if guess == secret_number
      puts "You win!"
      exit
    end

    # If they guess incorrectly: if they guess too high/low, let them know.
    if guess > secret_number && tries < 3
      puts "Your guess of #{guess} is incorrect, guess lower. You have #{tries} tries left, please enter another number."
    end
    if guess < secret_number && tries < 3
      puts "Your guess of #{guess} is incorrect, guess higher. You have #{tries} tries left, please enter another number."
    end
    if guess > secret_number && tries == 3
      puts "Your guess of #{guess} is incorrect. You lost! The secret number was #{secret_number}."
    end
    if guess < secret_number && tries == 3
      puts "Your guess of #{guess} is incorrect. You lost! The secret number was #{secret_number}."
    end

end

# Inputs
total_tries = 3
tries = 0

# What to display in Terminal
puts "Welcome to the Secret Number Game, created by Mollie Panzner!"
puts "What's your name?"
name = get_name
puts "Hi #{name}!"
puts "You have 3 tries to guess a number between 1 and 10. Guess now."

# Let player know how many tries he has left each time
while tries < total_tries

  tries += 1
  puts "This is Try #{tries}"

  guess = get_guess
  verify_guess(guess, tries)

end






#     Once completed, save the file, commit the code to Git and push it to GitHub:
#     cd ~/Sites/secret_number/your_name_here/
#     git add secret_number.rb
#     git commit -m "Adding secret number homework"
#     git push origin master

