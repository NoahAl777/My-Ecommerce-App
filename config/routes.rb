Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # users#new (users = controller, new = action)

  # sign up routes
  get '/signup', to: 'users#new'
  post '/users', to: 'users#create'

  # login routes
  get '/login', to: 'sessions#new'
  post '/sessions', to: 'sessions#create'

  get '/', to: 'application#home'
end
