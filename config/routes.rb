Rails.application.routes.draw do
  devise_for :users
  root to: 'bokes#index'
  resources :bokes
  resources :odais, only: [:index, :new, :create] do
    resources :bokes
  end
  post '/second_odais/new' => 'second_odais#new'
  post '/second_odais/:second_odai_id/bokes/new' => 'bokes#new'
  resources :photos, only: [:index, :new, :create, :upload]


end
