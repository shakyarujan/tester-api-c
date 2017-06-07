class FoosController < ApplicationController
    
    require 'json'
    require 'net/http'


    def action
      @actions = ['Try','Your','Best',',','Never','GiveUp']
      @source = 'https://api.chucknorris.io/jokes/random'
      response = Net::HTTP.get_response(URI.parse(@source))
      @json = JSON.parse(response.body)
    end
    
    def index
    end
    
end
