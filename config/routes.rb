Rails.application.routes.draw do
  devise_for :users
  root "users#index"
  post "/users/:id", to: "users#show"

  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
