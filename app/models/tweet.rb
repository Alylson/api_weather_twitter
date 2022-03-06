class Tweet < ApplicationRecord

    validates :body, length: { minimum: 1, maximum: 200}

    def publish_to_twitter body
        auth = TwitterAccount.new()
        auth.client.update(body)
    end

    private
    
    def weather_params
        params.permit(
          :body
        )
    end
end
