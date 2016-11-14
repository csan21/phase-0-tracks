require_relative "game"

	describe GuessGame do
		let(:game) {GuessGame.new}
	
	it "hides letters" do
		expect(game.hidden_word("word", "_")).to eq "____"
	end

	it "shows correct guesses" do
		expect(game.hidden_word("word", "wd")).to eq "w__d"
	end

end