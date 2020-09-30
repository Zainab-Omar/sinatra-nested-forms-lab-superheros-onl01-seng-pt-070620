require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }
    
    get '/' do
     erb :super_hero  
    end

    post '/teams' do
      @team = Team.new(params[:team])
      params[:team][:superheros].each do |details|
        SuperHeros.new(details)  
      end
      @super_heros = SuperHeros.all
  
      erb :team
    end
end
