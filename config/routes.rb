JoinASquad::Application.routes.draw do
  devise_for :users
  devise_scope :user do
    root :to => 'home#index'
  end

  resources :users
  resources :games

  # aliases
  get 'profile' => 'users#index'

  get 'home' => redirect('/') 
end
