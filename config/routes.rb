Rails.application.routes.draw do
  devise_for :users

  root "home#index"

  namespace :themes do
    resources :agency, only: [:index, :show, :create]
  end
end
