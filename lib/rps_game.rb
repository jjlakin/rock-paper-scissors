require 'sinatra/base'
require_relative 'game'


class RPSgame < Sinatra::Base

	set :views, Proc.new { File.join(root, "..", "views") }
  set :public_folder, 'public'

  enable :sessions

	game = Game.new

  get '/' do
    'Hello RPSgame!'
    session[:score] = 0
    erb :index
  end

	post '/' do 
		
		player1 = :first
		session[:player1] = player1
		
		puts session[:score]
		erb :game
		
	end

	get '/single_player' do
    'Hello RPSgame!'
    erb :game
  end

	post '/single_player' do 
		
		@selection = {rock: "/images/sprsl-03.svg", paper: "/images/sprsl-02.svg", scissors: "/images/sprsl-04.svg" }
		game.player1 = params[:selection].to_sym
		game.player2 = game.computer_choice
		@player1_choice = game.player1
		@player2_choice = game.player2
		@result = game.player1_result
		score = session[:score]
		score += 1 if @result == :win
		session[:score] = score
		@score = session[:score]
		
		erb :game
		
	end

	

  # start the server if ruby file executed directly
  run! if app_file == $0
end
