# A word is inputed to be the game word
# Take the gameword and break down the string
# Check the guess from the user to the game word
# Change the underscore in the string of the game word if it is correct with the letter.
# Number of tries total is the game word length.
# The user should get congratulated if they win or mocked if they lose

require_relative 'hangman'

describe Game do
	let(:new_word) { Game.new("unicorn") }
	
	it "Gets the gameword on initialize" do
		expect(new_word.get_word).to eq "unicorn"
	end

	it "Take the gameword and break down into inidividual string" do
		expect(new_word.game_word).to eq ["u", "n", "i", "c", "o", "r", "n"]
	end

	it "Change the gameword to be '-' " do
		expect(new_word.game_template).to eq ["-", "-", "-", "-", "-", "-", "-"]
	end

	it "check to see if letter was used" do
		expect(new_word.check_if_used("u")).to eq false
	end

	it "change a letter" do
		expect(new_word.change_letter("u")).to eq ["u", "-", "-", "-", "-", "-", "-"]
	end
end

