Rails.application.routes.draw do

  # root
  root 'posts#index'

  # users
  devise_for :users

  # users, post, comments and likes
  resources :users, only: [:index, :show]
  resources :posts, only: [:index, :create] do
    resources :comments, only: [:create]
    resources :likes, only: [:create, :destroy]
  end

  # friendships
  resources :friendships
  post '/friends/create/:id', to: 'friendships#create'

end
