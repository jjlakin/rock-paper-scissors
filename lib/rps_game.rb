require 'sinatra/base'

class RPSgame < Sinatra::Base
  get '/' do
    'Hello RPSgame!'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
