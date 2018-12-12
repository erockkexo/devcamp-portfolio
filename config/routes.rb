Rails.application.routes.draw do
  devise_for :users, path: "", path_names: { sign_in: "login", sign_out: "log_out", sign_up: "register" }
  resources :portfolios, except: [:show]

  get 'angular_items', to: 'portfolios#angular'

  # This a specific route that takes in an ID paramater and is mapped to the show action
  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'

  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'
  
  resources :blogs

  root to: 'pages#home'
end
