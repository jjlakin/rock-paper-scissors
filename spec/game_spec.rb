require './lib/game'



describe Game do
	
	let(:game) {Game.new}	
	let(:player_1){double :player, choice: :rock, name: 'player1', wins: 1, win: 1}
	let(:player_2){double :player, choice: :scissors, name: 'player2', wins: 3, win: 1}
	
	it "should let rock beat scissors" do
		game.player1 = player_1
		game.player2 = player_2
		expect(game.player1_result).to eq(:won)
	end

	it "should let rock lose to scissors" do
		game.player1 = player_1
		game.player2 = player_2
		expect(game.player1_result).to eq(:won)

	end
	
	it "should return a best of 3 winner after 3 wins" do

		game.player1 = player_1
		game.player2 = player_2
		expect(game.winner).to eq('player2')

	end

end