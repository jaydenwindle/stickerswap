Rails.application.routes.draw do
  get 'home/index'

  root to: 'site#index'
end
