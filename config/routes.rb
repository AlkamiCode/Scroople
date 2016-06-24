Rails.application.routes.draw do
  devise_for :users

  root "visitors#index"

  get "/home", to: "home#index"

  put "/social_icons/:id", to: "social_icons#update"

  namespace :themes do
    resources :agency
  end
end
