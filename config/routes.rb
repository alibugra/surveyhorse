Rails.application.routes.draw do
  # SYSTEM ADMIN PAGES
  namespace :sysadmin do

  end

  # SURVEY MANAGER PAGES
  namespace :surveymanager do

  end

  # SURVEYOR PAGES
  namespace :surveyor do

  end

  # MAIN PAGES
  get '/home' => 'home#index'
  get '/faq' => 'faq#index'
  get '/contact' => 'contact#index'

  # AUTHENTICATION
  get '/signup' => 'users#new'
  post '/signup' => 'users#create'
  post '/sessions' => 'sessions#create'
  delete '/sessions', to: 'sessions#destroy', as: 'sign_out'

  root to: 'home#index'

  get '*path' => redirect('/')
end
