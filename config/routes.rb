Rails.application.routes.draw do
  devise_for :users
  root to: 'bokes#index'
  resources :bokes
  resources :odais, only: [:index, :new, :create] do
    resources :bokes
  end
  resources :photos, only: [:index, :new, :create, :upload]


end
