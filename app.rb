require_relative 'config/environment'

class App < Sinatra::Base
    # get '/' do  

    #     erb :index

    # end

    # get '/new' do


    #     erb :create_puppy
    # end

    # post '/puppy' do
        
    #     @puppy = Puppy.new(params[:name], params[:breed], params[:months_old])
    #     @name = @puppy.name
    #     @age = @puppy.months_old
    #     @breed = @puppy.breed
    #     erb :display_puppy
    # end

    get '/' do
        erb :index
      end
    
      get '/new' do
        erb :create_puppy
      end
    
      post '/puppy' do
        @puppy = Puppy.new(params['name'], params['breed'], params['months_old'])
        erb :display_puppy
      end
end
