Rails.application.routes.draw do
  root :to => "posts#index"
  resources :users, :except => [:destroy, :edit, :update]

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

  resources :posts, :except => [:edit, :update] do
    resources :comments, :only => [:create, :destroy]
  end

  resources :subjects, :only => [:show]
end
