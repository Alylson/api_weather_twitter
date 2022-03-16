Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  namespace :api do
    namespace :v1 do
      scope :weather do
        get '/' => 'weather#index'
      end
    end
  end

  namespace :api do
    namespace :v1 do
      get '/auth/twitter/callback' => 'omniauth_callbacks#twitter_response'
    end
  end

  Rails.application.routes.draw do
    resources :users, param: :_username
    post '/auth/login', to: 'authentication#login'
    get '/*a', to: 'application#not_found'
  end

  get 'auth', to: 'authentication#auth'
end
