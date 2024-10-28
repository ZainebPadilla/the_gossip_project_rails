Rails.application.routes.draw do
  get "/team", to: 'static_pages#team'
  get "/contact", to: 'static_pages#contact'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/*
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

  #get "gossips/", to: 'gossips#index'

  # Defines the root path route ("/")
  root 'gossips#index'

  get 'welcome/:name', to: "welcome#index"

  get "gossips/:gossip_id", to: "gossips#single_gossip", as: :single_gossip

  get "users/:user_id", to: "users#user_profile", as: :user_profile

  #get 'gossips/' => "rails/gossipindex", as: :gossip_index
end
