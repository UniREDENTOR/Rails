Rails.application.routes.draw do
  resources :alunos
  root 'alunos#index'
  resources :welcome
  resources :elefante
  resources :velha
  root "welcome#index"
end
