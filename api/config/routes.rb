Rails.application.routes.draw do
  resources :rounds, only: [:index, :show]
  resources :candidates, only: [:index, :show]
end
