require './lib/game'



describe Game do
	
	let(:game) {Game.new}	
	
	it "should let rock beat scissors" do
		game.player1 = :rock
		game.player2 = :scissors
		expect(game.player1_result).to eq(:win)
	end

	it "should let rock lose to scissors" do
		game.player1 = :rock
		game.player2 = :scissors
		expect(game.player1_result).to eq(:win)
	end
	
	it "should produce a return for a computer player" do
		game.player2 = game.computer_choice
	end
	
end