Rails.application.routes.draw do
  root "accounts#index"

  resources :accounts, only: [:new, :create, :index, :edit, :destroy]
end
