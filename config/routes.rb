Rails.application.routes.draw do
  get 'home/index'

  root to: 'site#index'

  get '/app' => 'site#app'

  # User routes
  post '/user_token' => 'user_token#create'

  post '/users' => 'users#create'

  # API Routes
  namespace :api do 
    namespace :v1 do 
      resources :stickers, only: [:index, :create, :destroy, :update] 
      resources :swap_requests, only: [:index, :create, :destroy, :update] 
    end 
  end
end
