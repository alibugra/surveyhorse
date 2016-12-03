Rails.application.routes.draw do
  # MAIN PAGES
  get '/home' => 'home#index'
  
  root to: 'home#index'

  get '*path' => redirect('/')
end
