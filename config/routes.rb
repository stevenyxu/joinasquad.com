JoinASquad::Application.routes.draw do
  devise_for :users

  get 'home' => redirect('/') 

  root :to => 'application#home'
end
