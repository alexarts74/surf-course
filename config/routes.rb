Rails.application.routes.draw do
  root to: "pages#home"
  get "test", to: "pages#test"
  get "testresults", to: "pages#testresults"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :surfboards
  # Defines the root path route ("/")
  # root "articles#index"
end
