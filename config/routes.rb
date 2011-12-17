JoinASquad::Application.routes.draw do
  devise_for :users
  devise_scope :user do
    root :to => 'home#index'
  end

  get 'home' => redirect('/') 
end
