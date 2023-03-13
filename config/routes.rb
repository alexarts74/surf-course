Rails.application.routes.draw do
  root to: "pages#home"
  get "form", to: "pages#form"
  get "results", to: "pages#results"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :surfboards
  # Defines the root path route ("/")
  # root "articles#index"
end
