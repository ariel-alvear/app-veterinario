Rails.application.routes.draw do
  resources :clients
  resources :pets
  resources :pet_histories

  root 'clients#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
