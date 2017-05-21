Rails.application.routes.draw do
  root to: 'site#index'

  namespace :api do 
    namespace :v1 do 
      resources :stickers, only: [:index, :create, :destroy, :update] 
      resources :swap_requests, only: [:index, :create, :destroy, :update] 
    end 
  end
end
