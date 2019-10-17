Rails.application.routes.draw do
  resources :artists
  resources :tracks
  root 'artists#index'
end
