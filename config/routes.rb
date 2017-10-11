Rails.application.routes.draw do
  devise_for :users
  root to: 'bokes#index'
  resources :bokes
  resources :odais

end
