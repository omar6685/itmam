Rails.application.routes.draw do
  resources :studies
  resources :company_sizes
  resources :nitak_tables
  resources :activity_tables
  get 'home_page/index'
  root "home_page#index"
  resources :inspections
  resources :company_statuses
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
