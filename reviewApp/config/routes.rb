Rails.application.routes.draw do
  resources :watch_reviews do
    collection do
      get :search
    end
  end
  resources :phone_reviews do
    collection do
      get :search
    end
  end
  #resources :phonereviews
  resources :tv_reviews do
    collection do
      get :search
    end
  end
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
  #resources :reviews
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
