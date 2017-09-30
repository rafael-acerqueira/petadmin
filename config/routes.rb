Rails.application.routes.draw do
  require 'sidekiq/web'
  mount Sidekiq::Web => '/sidekiq'
  mount Fae::Engine => '/admin'
  namespace :admin do
  end
end
