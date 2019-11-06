Rails.application.routes.draw do
  resources :artists, except: :destroy
  resources :genres, except: :destroy do
    resources :tracks, except: :destroy
  end
  root 'artists#index'
end
