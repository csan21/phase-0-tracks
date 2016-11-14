# //// 6.6 note ////
# I got stuck and couldnt return the letters from the hidden "_"
# I tried tons of variations with arrays and without
# To no avail.
# Since I couldn't have the letters replace the "_" , i couldn't set a win condition



## A Guessing Game ##

# Pseudo #

# A user (Player 1) enters a word
# The word is then hidden where the letters are replaced with "_"
# Another user (Player 2) must guess a letter
	# Total guesses are equal to the number of letters in the word
	# Repeat guesses are not counted against the total
	# Correct guesses are shown with a "_" being replaced by the correctly guessed letter
	# If Player 2 wins, congratulatory message
	# If Player 2 loses, taunting message

class GuessGame
	attr_reader :word, :game_over

# Initializes values and hides the word
	def initialize(word)
		puts "New game starting now"
		@word = word
		@guess_count = 0
		@game_over = false
	end

# Takes the Player 1 word and hides it
	def hidden_word(word, char)
		@hide = ''
		word.chars { |letter|
			@hide += (char.include? letter)? letter : "_" }
		@hide
	end

# Checks player 2's input aka letter guesses
	def user_guess(guesser)
		if @word.include? (guesser)
			@guess_count += 1
			puts "#{guesser} is correct"
			@hide = hidden_word(word, guesser)
			p @hide
		else
			puts "#{guesser} is incorrect"
			@guess_count += 1
		end
	end	

# Set conditions for the game to end
	def game_condition
		if @guess_count == @word.length
			@game_over = true
			puts "YOU LOSE"
		end		
	end

end

# DRIVER #
puts "Welcome to my Guessing Game"
puts "Player 1 - ENTER A WORD:"
input = gets.chomp.downcase

game = GuessGame.new(input)
puts `clear`
print game.hidden_word(input, "_")
puts
puts "Player 2 - You have #{input.length} attempts so be careful"

while !game.game_over
	puts
	puts "Player 2 - GUESS A LETTER:"
	puts
	guesser = gets.chomp.downcase
	game.user_guess(guesser)
	game.game_condition
end
