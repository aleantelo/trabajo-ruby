Rails.application.routes.draw do
  resources :horarios, only: [:edit, :update, :index, :show], path: '/horarios'

  resources :sucursals
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  namespace :authentication, path: '', as: '' do
    resources :users, only: [:new, :create], path: '/register', path_names: {new: '/'}
    resources :sessions, only: [:new, :create, :show, :destroy], path: '/login', path_names: {new: '/'}
  end
  
  resources :users, only: [:show, :edit, :update, :index, :destroy], path: '/user'
  resources :turns, path: '/'
end