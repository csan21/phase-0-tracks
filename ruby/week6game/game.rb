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
	attr_reader :word, :hidden, :game_over

# Initializes values and hides the word
	def initialize(word)
		@word = word.split
		@hidden = word.split('')
		@hidden.map! {|w| w = "_"}
		@guess_count = 0
		@game_over = false
	end

# Checks player 2's input aka letter guesses
	# def user_guess(letter)
	# 	index = 0
	# 	if word.include?(letter)
	# 		@hidden.length.times do |x|
	# 			if @hidden == letter
	# 				puts "#{letter} is already on the board, guess again"
	# 				@guess_count += 0

	# 			elsif @hidden[index] == letter
	# 				@hidden[index] = letter
	# 				@guess_count += 1
	# 			end
	# 	index += 1
	# 	end
	# end

	def test
		@hidden.each{|x| print "#{x}"}
	end
# end

# DRIVER #

puts "Player 1 - ENTER A WORD:"
input = gets.chomp.downcase

game = GuessGame.new(input)

# PERSONAL TESTING AREA
game.test

end
