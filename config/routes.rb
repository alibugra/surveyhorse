Rails.application.routes.draw do
  # SYSTEM ADMIN PAGES
  namespace :sysadmin do
    get '/users' => 'users#index'
    post '/delete-user' => 'users#delete_user'
    get '/users/:id/edit', to: 'users#edit' , as: 'edit_user'
    post '/users/:id' , to: 'users#update' , as: 'update_user'
  end

  # SURVEY MANAGER PAGES
  namespace :surveymanager do
    get '/surveys' => 'surveys#index'
    get '/create' => 'surveys#create'
    post '/create' => 'surveys#create'
    get '/profile' => 'profile#index'
    post '/profile' => 'profile#edit_profile'
  end

  # SURVEYOR PAGES
  namespace :surveyor do
    get '/profile' => 'profile#index'
    post '/profile' => 'profile#edit_profile'
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
