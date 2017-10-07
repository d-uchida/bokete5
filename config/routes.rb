Rails.application.routes.draw do
  root to: 'bokes#index'
  resources :bokes
  # get 'bokes' => 'bokes#index'

end
