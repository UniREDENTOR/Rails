Rails.application.routes.draw do
  resources :artists
  resources :genres, except: :destroy
  root 'artists#index'
end
