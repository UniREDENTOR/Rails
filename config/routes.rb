Rails.application.routes.draw do
  resources :alunos
  root to: 'alunos#index'
end
