Rails.application.routes.draw do
  resources :meals
  resources :customers
  resources :chefs
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
