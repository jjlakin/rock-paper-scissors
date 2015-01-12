require_relative 'player'

class Game

	attr_accessor :player1, :player2, :result, :test
	

	SELECTION = [:rock, :paper, :scissors]
	# EXPANDED_SELECTION = SELECTION << [:spock, :lizard]
	RESULT = [:tie, :won, :lost]
	# EXPANDED_RESULT = RESULT << [:win, :lose]

	def initialize
		player1 = nil
		player2 = nil
		result = nil
	end

	# def result
	# 	@result
	# end

	def player1_result 
		result = RESULT[SELECTION.index(self.player1.choice) - SELECTION.index(@player2.choice)]

		self.player1.win if result == :won
		self.player2.win if result == :lost
		return result

	end

	# def player1 player
	# 	@player1	= player
	# end

	# def player1?
	# 	@player1
	# end

	# def player2 player
	# 	@player2	= player
	# end
		
	def computer_choice
		SELECTION.sample
	end

	def best_of (wins = 3)
		@best_of = wins
	end

	def winner
		if self.player1.wins == best_of 
			return winner = self.player1.name 
		elsif self.player2.wins == best_of
			return winner = self.player2.name
		else
			return winner = false
		end
	end

end