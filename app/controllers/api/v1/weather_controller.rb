module Api::V1
  class WeatherController < ApplicationController
    def index
      require 'httpclient'

      query = {
        id: '2643743',
        units: 'metric'
      }

      client = HTTPClient.new
      response = client.get('http://api.openweathermap.org/data/2.5/weather?lang=pt_br', query)
      render json: response.body
    end
  end
end
