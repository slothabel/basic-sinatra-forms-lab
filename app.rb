require 'sinatra/base'
require 'pry'
class App < Sinatra::Base

    get '/newteam' do
        erb :newteam
    end
    
    get '/team' do
        puts "#{params[:name]}"
        erb :team
    end
    # binding.pry

    post '/team' do
        @name = params[:name]
        @coach = params[:coach]
        @pg = params[:pg]
        @sg = params[:sg]
        @pf = params[:pf]
        @sf = params[:sf]
        @c = params[:c]
        erb :team
      end

end
