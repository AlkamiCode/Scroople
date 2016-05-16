Rails.application.routes.draw do
  devise_for :users

  root "home#index"
  namespace :themes do
    get "/agency", to: "agency#index"
  end
end
