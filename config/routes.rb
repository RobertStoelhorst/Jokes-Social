Rails.application.routes.draw do
  get 'jokes/new'
  root :to => 'pages#home'
  resources :users, :only => [:new, :create, :index, :destroy]

  get '/login' => 'session#new'
  post 'login' => 'session#create'
  delete '/login' => 'session#destroy'
  put '/joke/:id/like' => 'jokes#like', as: 'like'
  delete 'joke/:id/like' => 'jokes#unlike'
  get '/dad_jokes' => 'jokes#dad'

  resources :jokes
end
