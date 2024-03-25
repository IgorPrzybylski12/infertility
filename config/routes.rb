Rails.application.routes.draw do
  resources :poly_variants do
    collection do
      get :index
      post :hello_test
    end
  end

  resources :poly_variants, only: :index do
    match "advanced_search" => "poly_variants#advanced_search",
          on: :collection, via: [:get, :post], as: :advanced_search
  end

  resources :scores
  resources :poly_vx_ds
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
  # get "up" => "rails/poly_variants", as: :rails_health_check
  root "poly_variants#advanced_search"
end
