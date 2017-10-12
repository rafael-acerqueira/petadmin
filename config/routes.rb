Rails.application.routes.draw do
  require 'sidekiq/web'
  mount Sidekiq::Web => '/sidekiq'  
  namespace :admin do
    resources :addresses
    resources :products
    resources :services
    resources :sells
    resources :campaigns
    resources :discounts
    resources :suppliers
    resources :clients
  end
  mount Fae::Engine => '/admin'
end
