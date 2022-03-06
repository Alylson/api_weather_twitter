module Api::V1
    class OmniauthCallbacksController < ApplicationController
    
    def twitter_response
        render plain: "Success"
    end
end