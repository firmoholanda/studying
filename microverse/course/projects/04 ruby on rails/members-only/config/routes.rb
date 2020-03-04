Rails.application.routes.draw do
  
  root 'static_pages#home'

  # static_pages
  get 'static_pages/home'
  get 'static_pages/help'

  # user routes
  resources :users

  get '/users', to: 'users#index'
  get '/sign_up', to: 'users#new'
  post '/signup', to: 'users#create'
  get '/account', to: 'users#edit'
  patch '/account', to: 'users#update'
  delete 'account', to: 'users#destroy'

  # session routes
  get     '/login',   to: 'sessions#new'
  post    '/login',   to: 'sessions#create'
  delete  '/logout',  to: 'sessions#destroy'

  # post routes
  resources :posts

end
