require 'sinatra/base'
require 'sinatra/reloader'

class DailyDiary < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get ('/') do
    erb :index
  end

  post ('/entry') do
    $entry = params['entry']
    redirect '/diary'
  end

  get ('/diary') do
    @entry = $entry
    erb :diary
  end

  run if app_file == $0

end