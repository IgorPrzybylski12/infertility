Rails.application.routes.draw do
  resources :scoring_machines
  resources :disorders
  resources :ds_authors
  resources :data_sources
  resources :poly_variants
  resources :mi_rnas
  resources :proteins
  resources :gene_products
  resources :genes
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
