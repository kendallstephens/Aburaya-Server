Rails.application.routes.draw do
  root 'welcome#index'
  resources :order_items
  resources :orders
  resources :users
  resources :items
  resources :categories
  resource :charges, only: [:create]

  post '/login', to: 'auth#login'
  get '/profile', to: 'users#profile'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
