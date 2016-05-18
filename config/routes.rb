Rails.application.routes.draw do
  get "/user_page/:id", to: "user_page#show"

  devise_for :users

  get "/themes", to: "themes#index"
  post "/themes", to: "themes#create"


  root "home#index"

  namespace :themes do
    get "/agency", to: "agency#index"
  end
end
