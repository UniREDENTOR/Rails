Rails.application.routes.draw do
  resources :albums
  root 'artists#index'
end
