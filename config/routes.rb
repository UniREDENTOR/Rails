Rails.application.routes.draw do
  resources :pedidos do
    get 'entregar', on: :member
  end
  root to: 'pedidos#index'
end
