module Api::V1
  class WeatherController < ApplicationController

    def initialize()
      @query = {
        id: '2643743',
        units: 'metric',
        appid: Rails.application.credentials.open_weather_map[:appid]
      }
    end
    
    # GET /api/v1/weather
    def index    
      client = HTTPClient.new
      response = client.get(Rails.application.credentials.open_weather_map[:url], @query)
      
      respArray = JSON.parse response.body
      desc = []
      temp = []
      feels = []
      time = Time.current.strftime("%d/%m/%Y %H:%M")
      city = []

      respArray.each do |key, value|
        if key == 'weather'
          desc = value[0]["description"]
        elsif key == 'main'
          temp = value["temp"]
          feels = value["temp"]
        elsif key == 'name'
          city = value
        end        
      end

      self.twitter("#{temp}°C e #{desc} em #{city} às #{time}.")
    end

    def twitter body
      tweet = Tweet.new()
      response = tweet.publish_to_twitter(body)
      
      callback = OmniauthCallbacks.new()
      callback.twitter_response      
    end    
  end
end
