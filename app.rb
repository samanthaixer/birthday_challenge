require 'sinatra/base'
require './lib/birthday'

class BirthdayMessage < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/birthday_message' do
    session[:name] = params[:name]
    session[:birthday] = "#{params[:day]}/#{params[:month]}"
    p session[:birthday]
    redirect '/display'
  end

  get '/display' do
    @name = session[:name]
    @birthday = session[:birthday]
    @days = Birthday.days_until_birthday(@birthday)
    erb :message
  end
end
