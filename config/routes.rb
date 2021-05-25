Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # READ ALL RESTAURANTS
  get 'restaurants', to: 'restaurants#index'

  # SHOW CREATE RESTAURANT FORM
  get 'restaurants/new', to: 'restaurants#new'

  # SHOW ONE RESTAURANT
  get 'restaurants/:id', to: 'restaurants#show', as: :restaurant

  # CREATE RESTAURANT ON DB
  post 'restaurants', to: 'restaurants#create'

  # EDIT FORM
  get 'restaurants/:id/edit', to: 'restaurants#edit', as: :edit_restaurant

  # UPDATE RESTAURANT INFOS
  patch 'restaurants/:id', to: 'restaurants#update'

  # DELETE RESTAURANT
  delete 'restaurants/:id', to: 'restaurants#destroy'

  # resources :restaurants
  # resources :restaurants, only: [:new, :create]
  # resources :restaurants, except: [:index]
end
