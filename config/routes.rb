HackerNews::Application.routes.draw do
  resources :sessions
  resources :users
  resources :links

  get "sign up", to: "users#new", as: "signup"
  get "login", to: "sessions#new", as: "login"
  get "logout", to: "sessions#destroy", as: "logout"

  root :to => 'links#index'
end
