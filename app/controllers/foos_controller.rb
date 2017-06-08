class FoosController < ApplicationController
    
    require 'json'
    require 'net/http'


    def action
      @actions = ['Try','Your','Best',',','Never','GiveUp']
      @source = 'https://api.chucknorris.io/jokes/random'
      response = Net::HTTP.get_response(URI.parse(@source))
      @json = JSON.parse(response.body)
      respond_to do |format|
        format.html { render  html: "" }
        format.json { render json: @json }
        format.xml { render xml: @json }
      end
    end
    
end
