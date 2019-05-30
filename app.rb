require 'sinatra/base'

class Battle < Sinatra::Base

enable :sessions

  get '/' do
    "Testing infrastructure working!"
  end

  post '/names' do
    p params
    session[:player1] = params[:user_name1]
    session[:player2] = params[:user_name2]
    redirect '/play'
    # erb(:play)
    # "#{@user_name1} <br> #{@user_name2}"
    # erb :form
  end

  get '/players' do
    erb(:form)
  end

  get '/play' do
    @user_name1 = session[:player1]
    @user_name2 = session[:player2]
      erb :play
  end
  # start the server if ruby file executed directly

  run! if app_file == $0
end
