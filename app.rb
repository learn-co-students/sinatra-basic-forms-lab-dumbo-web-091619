require_relative 'config/environment'

class App < Sinatra::Base

    #homepage
    get '/' do  

        erb :index
        
    end

    get '/new' do


        erb :create_puppy
    end

    post '/puppy' do
        # binding.pry
        @puppy = Puppy.new(params[:name], params[:breed], params[:months_old])
        @name = @puppy.name
        @age = @puppy.months_old
        @breed = @puppy.breed
        erb :display_puppy
    end

    # get '/puppy'


end
