require 'sinatra/base'
require 'rspec'
require_relative 'lib/player'
require_relative 'lib/game'
require_relative 'lib/attack'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/players' do
      player_1 = Player.new(params[:player_1])
      player_2 = Player.new(params[:player_2])
      @game = Game.create(player_1, player_2)
     redirect '/play'
    end

  get '/play' do
    @game = Game.instance
    erb(:play)
  end

  post '/attack' do
    Attack.kick(@game.opponent_of(@game.current_turn))
    if @game.game_over?
      redirect '/game-over'
    else
      redirect '/attack'
    end
  end

  get '/attack' do
    @game = Game.instance
    erb(:attack)
  end

  get '/game-over' do
     @game = Game.instance
     erb(:game_over)
   end

   post '/switch' do
     @game = Game.instance
     @game.switch_turn
     redirect '/play'
   end

  run! if app_file == $0

end
