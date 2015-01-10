require 'sinatra/base'
require_relative 'game'


class RPSgame < Sinatra::Base

	set :views, Proc.new { File.join(root, "..", "views") }
  set :public_folder, 'public'

	game = Game.new

  get '/' do
    'Hello RPSgame!'
    erb :index
  end

	post '/' do 
		
		erb :game
		
	end

	get '/single_player' do
    'Hello RPSgame!'
    erb :game
  end

	post '/single_player' do 
		

		game.player1 = params[:selection].to_sym
		game.player2 = game.computer_choice
		@result = game.player1_result
		erb :game
		
	end

	

  # start the server if ruby file executed directly
  run! if app_file == $0
end
