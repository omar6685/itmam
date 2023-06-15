Rails.application.routes.draw do
  root "inspections#index"
  resources :inspections
  resources :company_statuses
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
