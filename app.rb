require 'sinatra'
require 'sinatra/reloader' if development?

get '/' do
    "Hello!"
end

get '/secret' do
    "Hellooooooo?"
end

get '/page2' do
    "Welcome to page 2"
end

get '/cat' do 
    "<div style ='border: 3px dashed red'>
        <img src = 'https://i.imgur.com/jFaSxym.png'>
    </div>"
end