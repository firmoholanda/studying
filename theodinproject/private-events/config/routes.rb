Rails.application.routes.draw do
  get 'sessions/new'

  root 'static_pages#home'
  get    '/help',    to: 'static_pages#help'
  get    '/about',   to: 'static_pages#about'

  # user
  get 'signup' => 'users#new'
  resources :users, only: [:index, :show, :new, :create]
  
  # session
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'
  
end
