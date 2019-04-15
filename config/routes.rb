Rails.application.routes.draw do
  root to: 'welcome#index'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'

  resources :users, only: [:new, :create, :show]

  resources :carts, only: [:create]
  resources :orders, only: [:create]

  resources :awards, only: [:index]

  resources :artists, only: [:index, :show, :new, :create] do
    resources :songs, only: [:index, :new, :create, :edit, :update]
  end

  resources :songs, only: [:index, :show]

  namespace :admin do
    resources :categories, only: [:index]
    resources :awards, only: [:create]
  end
end
