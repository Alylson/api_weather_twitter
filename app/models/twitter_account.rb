class TwitterAccount < ApplicationRecord
    def client
        client = Twitter::REST::Client.new do |config|
            config.consumer_key        = Rails.application.credentials.dig(:twitter, :consumer_key)
            config.consumer_secret     = Rails.application.credentials.dig(:twitter, :consumer_secret)
            config.access_token        = Rails.application.credentials.access_token
            config.access_token_secret = Rails.application.credentials.access_token_secret
        end
    end
end
