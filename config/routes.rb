Rails.application.routes.draw do
  root 'home#index'
  resources :pedidos do
    get 'entregar', on: :member
  end
  root to: 'pedidos#index'
  resources :alunos
  root 'alunos#index'
  resources :welcome
  resources :elefante
  resources :velha
end
