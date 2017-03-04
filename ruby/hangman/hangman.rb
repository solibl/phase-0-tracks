# A word is inputed to be the game word
# Take the gameword and break down the string
# Check the guess from the user to the game word
# Change the underscore in the string of the game word if it is correct with the letter.
# Number of tries total is the game word length.
# The user should get congratulated if they win or mocked if they lose

class Game
	def initialize(gameword)
		@final_word = gameword
	end
	def get_word
		@final_word
	end
end