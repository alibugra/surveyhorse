Rails.application.routes.draw do

  get 'faq/index'

  get 'contact/index'

  # AUTHENTICATION
  get '/signup' => 'users#new'
  post '/signup' => 'users#create'
  post '/sessions' => 'sessions#create'
  delete '/sessions', to: 'sessions#destroy', as: 'sign_out'
  # MAIN PAGES
  get '/home' => 'home#index'

  root to: 'home#index'

  get '*path' => redirect('/')
end
