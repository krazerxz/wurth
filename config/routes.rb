Rails.application.routes.draw do
  root "accounts#index"

  resources :accounts, only: [:new, :create, :edit, :update, :index, :destroy]
end
