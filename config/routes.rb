Rails.application.routes.draw do
  resources :notes
  resources :registrations
  resources :sessions
  resources :passwords
  resources :password_resets
  root 'sessions#home'

end
