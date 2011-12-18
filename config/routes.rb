JoinASquad::Application.routes.draw do
  devise_for :users
  devise_scope :user do
    root :to => 'home#index'
  end

  resources :users, :only => [:show]

  get 'home' => redirect('/') 
end
