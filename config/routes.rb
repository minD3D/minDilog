Rails.application.routes.draw do

  devise_for :users
  get 'sessions/new'

  resources :users

  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'


  get 'blog/blog'

  root 'home#index'
  get 'home/index'

  get 'about/about' => 'about#about'
  get 'blog/blog' => 'blog#blog'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
