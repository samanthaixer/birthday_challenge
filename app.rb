require 'sinatra/base'

class BirthdayMessage < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/birthday_message' do
    session[:name] = params[:name]
    redirect '/display'
  end

  get '/display' do
    @name = session[:name]
    erb :message
  end
end
