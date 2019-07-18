Rails.application.routes.draw do
  resources :books
  resources :subscribers
  resources :libraries
  root 'libraries#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
