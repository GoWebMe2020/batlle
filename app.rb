require 'sinatra'
require 'sinatra/reloader' if development?

class Battle < Sinatra::Base
    configure :development do
        register Sinatra::Reloader
    end

    get "/" do
        erb(:index)
    end

    run! if app_file == $0
end

# get '/' do
#     "Hello!"
# end

# get '/secret' do
#     "Hellooooooo?"
# end

# get '/page2' do
#     "Welcome to page 2"
# end

# get '/random-cat' do 
#     @name = ["Amigo", "Misty", "Almond"].sample
#     erb(:index)
# end

# post '/named-cat' do 
#     p params
#     @name = params[:name]
#     erb(:index)
# end 

# get '/cat_form' do
#     erb(:cat_form)
# end