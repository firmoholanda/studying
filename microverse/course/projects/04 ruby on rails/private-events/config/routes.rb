Rails.application.routes.draw do
  
  root 'static_pages#home'
  get    '/help',    to: 'static_pages#help'
  get    '/about',   to: 'static_pages#about'

  # user
  resources :users, only: [:index, :show, :new, :create] do
    resources :invites, only: [:index, :edit, :update]
  end

  # events
  post '/events/:event_id/invites/new' => 'invites#create'
  resources :events, only: [:index, :show, :new, :create, :destroy] do
    resources :invites, only: :new
  end

  # invites
  resources :invites
  
  # session
  get 'signup' => 'users#new'
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'

end
