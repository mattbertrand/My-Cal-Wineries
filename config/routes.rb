Rails.application.routes.draw do
  
  root to: 'static#home'
  
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  resources :wineries
  resources :regions do
    resources :wineries, only: [:new, :create, :index]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
