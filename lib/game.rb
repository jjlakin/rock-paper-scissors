class Game

	attr_accessor :player1, :player2

	SELECTION = [:rock, :paper, :scissors]
	RESULT = [:tie, :win, :lose]

	def player1_result 
		RESULT[SELECTION.index(@player1) - SELECTION.index(@player2)]
	end

	def computer_choice
		SELECTION.sample
	end
	
	# def player2_result 
	# 	RESULT[SELECTION.index(@player2) - SELECTION.index(@player1)]
	# end

	
end