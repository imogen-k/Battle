require 'sinatra/base'
require 'rspec'
require_relative 'lib/player'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/players' do
      player_1 = Player.new(params[:player_1])
      player_2 = Player.new(params[:player_2])
      $game = Game.new(player_1, player_2)
     redirect '/play'
    end

    get '/play' do
    #@player_1 = $game.player_1
    #@player_2 = $game.player_2
    @game = $game
    erb(:play)
  end

  get '/attack' do
  #  @player_1 = $game.player_1
  #  @player_2 = $game.player_2
    @game = $game
    @game.attack(@game.player_2)
    erb(:attack)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
