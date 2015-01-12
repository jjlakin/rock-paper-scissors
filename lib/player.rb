class Player
	
	attr_accessor :name, :choice, :test
	attr_reader :wins

	def initialize
		@test = false
		@wins = 0
	end

	def win
		@wins += 1
	end

end