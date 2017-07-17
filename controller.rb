require('sinatra')
require('sinatra/contrib/all')
require_relative('./models/game')
require('json')

get '/' do
  erb(:home)
end

get '/the-rules' do
  erb(:the_rules)
end

get '/play/:hand1/:hand2' do
  game = Game.new( params[:hand1], params[:hand2] )
  # return "#{game.play()}" 
    @game_winner = game.play
    erb( :result )
  end


