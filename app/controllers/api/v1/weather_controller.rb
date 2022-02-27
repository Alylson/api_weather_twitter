module Api::V1
  class WeatherController < ApplicationController
    def index
      require 'httpclient'

      query = {
        id: '2643743',
        units: 'metric',
        appid: '93fa643fa0fc8ce5599c5a8ea2e7898e',
      }

      client = HTTPClient.new
      response = client.get('http://api.openweathermap.org/data/2.5/weather?id=2643743&lang=pt_br&appid=93fa643fa0fc8ce5599c5a8ea2e7898e', query)
      render json: response.body
    end
  end
end
