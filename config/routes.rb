Rails.application.routes.draw do

  # root to: 'articles#index'
  root to: 'author_sessions#new'

  resources :bars
  resources :ideas
  resources :creators
  resources :author_sessions, only: [ :new, :create, :destroy ]

  get 'login' => 'author_sessions#new'
  get 'logout' => 'author_sessions#destroy'

end
