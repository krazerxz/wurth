Rails.application.routes.draw do
  root "accounts#index"

  resources :accounts, only: [:index]
end
