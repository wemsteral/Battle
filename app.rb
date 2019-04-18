require 'sinatra/base'
require_relative 'lib/player'

class Battle < Sinatra::Base


  get '/test' do
    "Testing infrastructure working!"
  end

  get '/' do
    erb :index
  end

  post '/names' do
    $player1 = Player.new(params[:player_1_name])
    $player2 = Player.new(params[:player_2_name])
    redirect '/play'
  end

  get '/play' do
    $player1 = @player_1_name
    $player2 = @player_2_name
    erb :play
  end

  get '/attack' do
    $player1 = @player_1_name
    $player2 = @player_2_name
    erb :attack
  end

  run! if app_file == $0
end
