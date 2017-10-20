Rails.application.routes.draw do
  devise_for :users
  root to: 'bokes#index'
  resources :bokes, only: [:index, :new, :create, :preview] do
    collection do
      post 'preview'
    end
  end
  resources :odais, only: [:index, :new, :create, :preview] do
    resources :bokes
    collection do
      post 'preview'
    end
  end
  resources :photos, only: [:index, :new, :create, :upload]


end
