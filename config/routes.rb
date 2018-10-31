Rails.application.routes.draw do
  resource :pedidos, except: :show
  root to: 'pedidos#new'
end
