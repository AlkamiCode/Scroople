Rails.application.routes.draw do
  devise_for :users

  get "/themes", to: "themes#index"
  post "/themes", to: "themes#create"

  root "home#index"

  namespace :themes do
    resources :agency, only: [:index, :show]
  end
end
