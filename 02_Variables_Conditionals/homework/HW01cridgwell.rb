###############################################################################
#
# Back-End Web Development - Homework #1
#
# Secret Number is a game you will build in two parts.
# The purpose of the game is to have players guess a secret number from 1-10.
#
# Read the instructions below.
# This exercise will test your knowledge of Variables and Conditionals.
#
###############################################################################
#
# We're ready to program! To practice our Ruby skills lets create a secret number game. 
# In this game players have three tries to guess a secret number between 1 and 10. 
#
# Here are some guidelines to building your game:
#
#	Intros
# 	-	Welcome the player to your game. Let them know who created the game. 
#	  -	Ask for the player's name then personally greet them by printing to the screen, "Hi player_name!"
#	  -	Any good game will communicate the rules. Let the player know they must guess a number between 1 and 10 
#		and that they only have 3 tries to do so.
#
#	Functionality: 
#	 -	Hard code the secret number. Make it a random number between 1 and 10.
#	 - 	Ask the user for their guess.
#	 -	Verify if they were correct. If the player guesses correctly they win the game they should be congratulated and the game should end.
#	 -	If they guess incorrectly, give the player some direction. If they guess too high let them know, if they guess too low, let them know.
#	 - 	Don't forget to let your players know how many guesses they have left. Your game should say something like
#		  "You have X many guesses before the game is over enter a another number"
#	 -	If they don't guess correctly after 3 tries, print that the Player lost and the game is over. Also let them know what the `secret_number` was.
#
# Make sure to add helpful comments to your code to document what each section does.
# 
# Remember to cast input from the Player into the appropriate data type.
#
###############################################################################

#function to strip any leading or following spaces from user input
def get_input
	gets.chomp
end

#function for the welcome and username input
def welcome_user
  puts "Welcome to Secret Number!\nWritten by Craig Ridgwell\n\nPlease enter your name:"
  $username = get_input
  puts "\nWelcome #{$username}"
end

#gets the users guess, 
def get_guess(guesses,secret)
  puts "Please guess a number between 1 and 10. You have #{guesses} more chances left."
  guess = get_input.to_i
  check_guess(guess,secret)
end

#checks to see if the user guess is correct
def check_guess (guess,secret)
  if guess < secret
    puts "\nSorry you guessed too low"
  elsif guess > secret
    puts "\nSorry you guessed too high"
  else
    puts "\nGreat scott you got it - Congratulations!"
    exit
  end
end

#set the secret number and the number of guesses allowed
secret = 6
guesses = 3

#Welcoming message
welcome_user

#run through user guesses
while guesses > 0 do
   get_guess(guesses, secret)
   guesses -= 1
end

#run out of guesses, player loses
puts "You have run out of guesses! The secret number was #{secret}\n\n"