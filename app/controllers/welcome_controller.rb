require 'rest'

class WelcomeController < ApplicationController
  def index
    response = REST.get("http://api.giffy.co/gifs/limit/1/offset/#{rand(8000)}")
    @gif = JSON.parse(response.body)['gifs'].first
  end
end
