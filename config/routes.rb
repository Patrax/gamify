Rails.application.routes.draw do

  root 'pages#home'

  get '/challenges/try', to: 'pages#try_challenge'

  get '/courses/physics', to: 'pages#course_physics'
  get '/courses', to: 'pages#courses'

  get '/courses/viewer/', to: 'pages#viewer'
  get '/courses/viewer/challenges', to: 'pages#viewer'

  resources :users, except: [:new, :destroy]
  get '/register', to: 'users#new'
  
  resources :games do
    member do
      post 'like'
    end
  end

  resources :articles do
    resources :comments
  end
  
  get '/login', to: "logins#new"
  post '/login', to: "logins#create"
  get '/logout', to: "logins#destroy"
  
  resources :tags, only: [:new, :create, :show]

end
