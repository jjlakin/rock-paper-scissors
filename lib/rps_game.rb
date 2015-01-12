require 'sinatra/base'
require_relative 'game'


class RPSgame < Sinatra::Base

	set :views, Proc.new { File.join(root, "..", "views") }
  set :public_folder, 'public'

  enable :sessions

	game = Game.new

  get '/' do
    
    session[:score] = 0
    erb :index
  end

	post '/' do 
		
		player1 = Player.new
		player2 = Player.new

		player1.name = params[:name]
		player2.name = params[:name2] == '' ? 'computer' : params[:name2]

		player2.test = true if params[:test]

		game.player1 = player1
		game.player2 = player2

		@player1_name = game.player1.name
		@player2_name = game.player2.name
			
		erb :game
		
	end

	get '/single_player' do
    'Hello RPSgame!'
    erb :game
  end

	post '/single_player' do 

		redirect '/result' if game.winner
		
		@player1_name = game.player1.name
		@player2_name = game.player2.name

		@selection = {rock: "/images/sprsl-03.svg", paper: "/images/sprsl-02.svg", scissors: "/images/sprsl-04.svg" }

		game.player1.choice = params[:selection].to_sym
		game.player2.choice = game.player2.test ? :rock : game.computer_choice

		@player1_choice = game.player1.choice
		@player2_choice = game.player2.choice

		@result = game.player1_result
		@score = game.player1.wins
		
		erb :game
		
	end

	get '/result' do

		@winner = game.winner
		erb :result
	
	end

	

  # start the server if ruby file executed directly
  run! if app_file == $0
end
