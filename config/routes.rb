Rails.application.routes.draw do
  resources :welcome
  resources :elefante
  resources :velha
  root "welcome#index"
end
