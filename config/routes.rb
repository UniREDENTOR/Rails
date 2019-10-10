Rails.application.routes.draw do
  resources :artists
  resources :genres
  root 'artists#index'
end
