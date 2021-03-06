Rails.application.routes.draw do

  root :to => 'pages#home'

  post '/search/movies' => 'movies#search'
  post '/fetch/movies' => 'movies#fetch'
  post '/addtolist/movies' => 'movies#addlist'
  get '/removeitem/lists/:id' => 'lists#removeitem'
  post '/addtolist/directors' => 'directors#addlist'
  post '/addtolist/actors' => 'actors#addlist'


  resources :actors
  resources :movies
  resources :directors
  resources :lists
  resources :users

  get '/login' => 'session#new' # login form
  post '/login' => 'session#create' # perform a login
  delete '/login' => 'session#destroy' # perform a log out
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
