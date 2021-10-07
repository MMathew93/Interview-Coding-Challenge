Rails.application.routes.draw do
  root 'sessions#home'

  get 'signup', to: 'registrations#new'
  post 'signup', to: 'registrations#create'
  get 'login', to: 'sessions#login'
  post 'login', to: 'sessions#create', as: 'log_in'
  delete 'logout', to: 'sessions#destroy'
  get 'password', to: 'passwords#edit', as: 'edit_password'
  patch 'password', to: 'passwords#update'
  get 'password/reset', to: 'password_reset#new'
  post 'password/reset', to: 'password_reset#create'
  get 'password/reset/edit', to: 'password_resets#edit'
  patch 'password/reset/edit', to: 'password_resets#update'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
