Rails.application.routes.draw do
  resources :notes
  root 'sessions#home'

  get 'signup', to: 'registrations#new'
  post 'signup', to: 'registrations#create'
  get 'login', to: 'sessions#login' #log in page to log onto site
  post 'login', to: 'sessions#create', as: 'log_in' # method to find the user, sets the id, and redirects to the root
  get 'user/:id/notes', to: 'sessions#dashboard', as: 'user_notes'
  #get 'user/:id/notes/new', to: 'notes#new', as: 'new_user_note'
  delete 'logout', to: 'sessions#destroy'
  get 'password', to: 'passwords#edit', as: 'edit_password'
  patch 'password', to: 'passwords#update'
  get 'password/reset', to: 'password_resets#new'
  post 'password/reset', to: 'password_resets#create'
  get 'password/reset/edit', to: 'password_resets#edit'
  patch 'password/reset/edit', to: 'password_resets#update'
end
