require 'sinatra/base'
require 'sinatra/reloader'

class DailyDiary < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get('/') do
    "Oh! A diary!"
  end

  run if app_file == $0

end