module Api::V1
  class WeatherController < ApplicationController
    attr_accessor :query

    def initialize()
      @query = {
        id: '2643743',
        units: 'metric',
        appid: Rails.application.credentials.open_weather_map[:appid]
      }
    end
    
    def index
      require 'httpclient'
      
      client = HTTPClient.new
      response = client.get(Rails.application.credentials.open_weather_map[:url], @query)
      render json: response.body
    end
  end
end
