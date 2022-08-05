Rails.application.routes.draw do
  resources :index
  resources :categories
  resources :invoices
  resources :branches
  resources :customers
  resources :genders
  resources :items
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
