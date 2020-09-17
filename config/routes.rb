Rails.application.routes.draw do
  devise_for :users, :controllers => { :registrations => "user/registrations" }
  root 'welcome#index'

  resources :user_stocks, only: [:create, :destroy]
  resources :users, only: [:show]
  resources :connections

  get 'my_portfolio', to: "users#my_portfolio"
  get 'search_stocks', to: "stocks#search"
  get 'my_connections', to: "users#my_friends"
  get 'search_connections', to: "users#search"
  post 'add_friend', to: "users#add_friend"
end
