Rails.application.routes.draw do
  devise_for :users
  root to: 'bokes#index'
  resources :bokes
  # get 'bokes' => 'bokes#index'

end
