Rails.application.routes.draw do
  root "home#index"
  namespace :themes do
    get "/agency", to: "agency#index"
  end
end
