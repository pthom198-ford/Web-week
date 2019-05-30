require 'sinatra/base'

class Battle < Sinatra::Base
  get '/' do
    "Testing infrastructure working!"
  end

  post '/names' do
    p params
    @user_name1 = params[:user_name1]
    @user_name2 = params[:user_name2]
    erb(:play)
    # "#{@user_name1} <br> #{@user_name2}"
    # erb :form
  end

  get '/players' do
    erb(:form)
  end

  # start the server if ruby file executed directly

  run! if app_file == $0
end
