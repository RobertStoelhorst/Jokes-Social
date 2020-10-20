Rails.application.routes.draw do
  get 'jokes/new'
  root :to => 'pages#home'
  resources :users, :only => [:new, :create, :index]

  get '/login' => 'session#new'
  post 'login' => 'session#create'
  delete '/login' => 'session#destroy'
  put '/joke/:id/like' to: 'jokes#like', as: 'like'

  resources :jokes, :only => [:new, :create]
end
