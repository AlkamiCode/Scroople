Rails.application.routes.draw do
  devise_for :users

  root "visitors#index"

  get "/home", to: "home#index"

  namespace :themes do
    resources :agency
  end
end
