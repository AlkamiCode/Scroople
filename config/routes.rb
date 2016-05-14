Rails.application.routes.draw do
  root "home#index"
  get "agency" => "agency#index"
end
