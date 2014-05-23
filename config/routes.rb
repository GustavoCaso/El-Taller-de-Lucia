Rails.application.routes.draw do

  root 'static#index'
  resources :pictures do
    collection do
      get "wedding"
      get "crown"
      get "center"
      get "event"
    end
  end
  resources :newsletters
  resources :users
  get "login", to: "sessions#new"
  post "login", to: "sessions#create"
  delete "logout", to: "sessions#destroy"

  
end
