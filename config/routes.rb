Rails.application.routes.draw do

  # root to: 'articles#index'
  root to: 'author_sessions#new'

  resources :caves
  resources :articles
  resources :authors
  resources :author_sessions, only: [ :new, :create, :destroy ]

  get 'login' => 'author_sessions#new'
  get 'logout' => 'author_sessions#destroy'

end
