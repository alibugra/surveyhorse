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
    get '/create' => 'surveys#new'
    post '/create' => 'surveys#create'
    post '/delete-survey' => 'surveys#delete_survey'
    post '/publish-survey' => 'surveys#publish_survey'
    get '/surveys/:id/edit', to: 'surveys#edit' , as: 'edit_survey'
    get '/surveys/:id/preview', to: 'surveys#preview' , as: 'preview_survey'
    post '/surveys/:id' , to: 'surveys#update' , as: 'update_survey'
    get '/surveyresults', to: 'surveys#show' , as: 'show_results'
    get '/profile' => 'profile#index'
    post '/profile' => 'profile#edit_profile'
  end

  # SURVEYOR PAGES
  namespace :surveyor do
    get '/profile' => 'profile#index'
    post '/profile' => 'profile#edit_profile'
    get '/search' => 'search#index'
    get '/surveys/:id/fill', to: 'surveys#fill' , as: 'fill_survey'
    post '/surveys/:id' , to: 'surveys#fill_complete' , as: 'fill_complete_survey'
  end

  # ANONYMOUS PAGES
  namespace :anonymous do
    get '/surveys/:id/fill', to: 'surveys#fill' , as: 'fill_survey'
    post '/surveys/:id' , to: 'surveys#fill_complete' , as: 'fill_complete_survey'
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
