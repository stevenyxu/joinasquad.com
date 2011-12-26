JoinASquad::Application.routes.draw do
  devise_for :users
  devise_scope :user do
    root :to => 'home#index'
  end

  resources :users, :only => [:index, :show, :edit, :update]

  # aliases
  get 'profile' => 'users#index'

  get 'home' => redirect('/') 
end
