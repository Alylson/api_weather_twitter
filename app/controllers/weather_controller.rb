class WeatherController < ApplicationController
    def index
        @data = 'teste'
        render json: @data
    end 
end
