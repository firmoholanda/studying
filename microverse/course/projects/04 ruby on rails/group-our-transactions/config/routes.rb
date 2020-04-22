Rails.application.routes.draw do
  
  root 'application#home'

  # application
  get     '/home',    to: 'application#home'
  get     '/about',   to: 'application#about'
  get   '/contact',   to: 'application#contact'

  # users
  get     '/signup',  to: 'users#new'
  post    '/signup',  to: 'users#create'
  resources :users
  
  # session routes
  get     '/login',   to: 'sessions#new'
  post    '/login',   to: 'sessions#create'
  delete  '/logout',  to: 'sessions#destroy'
  
  # projects
  get  '/projects_no_group', to: 'projects#index_projects_no_group'
  get '/search' => 'projects#search'
  resources :projects
  
  # groups
  resources :groups

end
