Rails.application.routes.draw do
  resources :welcome
  resources :elefante
  root "welcome#index"
end
