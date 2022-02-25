require 'sinatra/base'
require 'sinatra/cookies'

class Main < Sinatra::Base
  helpers Sinatra::Cookies
  get "/" do
    cookies[:setting] = 'ZmxhZ3tJMl8xdF9DbzBrMTMyX3Q0QHRfVV9TMzNrPz99'
    @text = File.open("template/" + params[:page]||= "index").read
    haml :index
  end
end
