Rails.application.routes.draw do
  get 'users/new'

  root 'static_pages#home'
  get '/home', to: 'static_pages#home'
  get '/help', to: 'static_pages#help'
  get '/about', to: 'static_pages#about'
  get '/contacts', to: 'static_pages#contacts'
  get '/signup', to: 'users#new'
end
