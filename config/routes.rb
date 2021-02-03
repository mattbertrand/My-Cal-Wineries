Rails.application.routes.draw do
  root to: 'static#home'
  
  
  devise_for :users
  resources :wineries
  resources :regions
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
