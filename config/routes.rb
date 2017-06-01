require 'sidekiq/web'

Rails.application.routes.draw do
  resources :hand_raises
  mount Sidekiq::Web => '/sidekiq'
end
