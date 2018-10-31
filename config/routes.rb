Rails.application.routes.draw do
  resources :pedidos
  root to: 'pedidos#index'
end
