Rails.application.routes.draw do
  root "accounts#index"

  resources :accounts, only: [:new, :index, :edit, :destroy]
end
