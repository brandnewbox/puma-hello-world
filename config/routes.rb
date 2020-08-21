require "sidekiq/web"
Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "home#get"
  post "/", to: "home#post"
  get "enqueue", to: "home#enqueue"
  mount Sidekiq::Web => "/sidekiq"
end
