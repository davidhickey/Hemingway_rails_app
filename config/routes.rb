Rails.application.routes.draw do

  # root to: 'articles#index'
  root 'welcome#root'

  resources :bars do
    resources :ideas
  end
end
  resources :ideas
  resources :creators
  resources :author_sessions, only: [ :new, :create, :destroy ]

  get 'login' => 'author_sessions#new'
  get 'logout' => 'author_sessions#destroy'
  get '/welcome' => 'welcome#root'


end
