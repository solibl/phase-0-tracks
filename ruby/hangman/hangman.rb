# A word is inputed to be the game word
# Take the gameword and break down the string
# Check the guess from the user to the game word
# Change the underscore in the string of the game word if it is correct with the letter.
# Number of tries total is the game word length.
# The user should get congratulated if they win or mocked if they lose

class Game
	attr_reader :final_word, :check_used, :already_replaced
	attr_accessor :answer, :template, :letter_used

	def initialize(gameword)
		@final_word = gameword
		@answer = gameword.split('')
		@template = []
		@letter_used = []
		@check_used = false
		@already_replaced = []
	end
	def get_word
		@final_word
	end
	def game_word
		@answer
	end
	def game_template
		@answer.length.times do
			@template << "-"
		end
		@template
	end
	def check_if_used(letter)
		if @letter_used.include?(letter) == true
			@check_used = true
		else
			@check_used = false
		end
		@check_used
	end
	def change_letter(letter)
		placement = 0
		@answer.each do |value|
			if value == letter
				@template[placement] = letter
				@already_replaced << placement
			elsif @already_replaced.include?(placement) == true
				@template
			else 
				@template[placement] = "-"
			end
			placement += 1
		end
		@template
	end
	def print_game
		p @template
		@template
	end
end


# # Driver Code

puts "Player One"
puts "What is the word you want to play with?"
word = gets.chomp.downcase
new_game = Game.new(word) 
puts "Player Two"
turn = 0
counter = 1
timelimit = new_game.answer.length + 3
puts "You have a total of #{timelimit} turns"
until turn > timelimit
	if turn == timelimit
	puts "You Lose!"
	break
	end
	puts "Turn #{counter}"
	puts "Check a letter"
	letter = gets.chomp
	new_game.check_if_used(letter)
	if new_game.check_used == false && letter.length == 1 && letter.to_i == 0
		new_game.letter_used << letter
	else
		until new_game.check_used == false && letter.length == 1 && letter.to_i == 0
			puts "Please enter another letter you haven't used"
			letter = gets.chomp
			new_game.check_if_used(letter)
		end
	end
	new_game.change_letter(letter)
	new_game.print_game
	if new_game.template.join('') == new_game.final_word
		puts "You Win!"
		break
	end
	turn += 1
	counter += 1
end
