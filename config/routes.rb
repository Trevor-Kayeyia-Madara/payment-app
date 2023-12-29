Rails.application.routes.draw do
  resources :rooms, only: [:show]
  resources :guests, only: [:new, :create] do
    resources :transactions, only: [:new, :create]
  end
  root 'guests#new'
end
