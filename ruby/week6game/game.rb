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
		@word = word
		@hidden = word.split('')
		@hidden.map! {|w| w = "_"}
		@guess_count = 0
		@game_over = false
	end

# Maps out the letters hidden by "_"
	def test_area
		@hidden.each{|w| print " #{w} "}
	end

# Checks player 2's input aka letter guesses
	def user_guess(letter)
		if @word.include? (letter)
			@guess_count += 1
			puts "#{letter} is correct"
		else
			puts "#{letter} is incorrect"
			@guess_count +=1
		end
	end	

	def game_condition
		if @guess_count == @word.length
			@game_over = true
			puts "YOU LOSE"
	end

end

# DRIVER #
puts "Welcome to my Guessing Game"
puts "Player 1 - ENTER A WORD:"
input = gets.chomp.downcase

game = GuessGame.new(input)

puts `clear`

# # PERSONAL TESTING AREA
# # game.test_area

puts "Player 2 - You have #{input.length} attempts so be careful"

while !game.game_over
	game.test_area
	puts
	puts "Player 2 - GUESS A LETTER:"
	puts
	letter = gets.chomp.downcase
	game.user_guess(letter)
	game.game_condition
end
end
