Rails.application.routes.draw do
  get 'sessions/index'
  #get 'sessions/new'
  resources :sessions
  get 'sessions/create'
  get 'sessions/destroy'
  resources :users
  get 'static_pages/home'
  root 'static_pages#home'
  get 'static_pages/about'
  get 'static_pages/contact'
  get 'static_pages/products'
  resources :products
  resources :profiles
  resources :reviews
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
