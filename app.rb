require 'sinatra'
require 'sinatra/reloader' if development?
require './lib/player'
require './lib/game'
require './lib/attack'

class Battle < Sinatra::Base
    configure :development do
        register Sinatra::Reloader
    end

    enable 'sessions'

    get '/' do
        erb(:index)
    end

    post '/names' do
        player1 = Player.new(params[:player1])
        player2 = Player.new(params[:player2])
        $game = Game.new(player1, player2)
        redirect '/play'
    end

    get '/play' do
        @game = $game
        erb :play
    end

    get '/attack' do
        @game = $game
        Attack.run(@game.opponent_of(@game.current_turn))
        erb :attack
    end

    post '/switch-turns' do
        $game.switch_turn
        redirect '/play'
    end

    run! if app_file == $0
end