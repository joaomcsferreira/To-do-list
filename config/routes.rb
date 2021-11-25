Rails.application.routes.draw do
  resources :tasks, only: [:index, :create, :destroy]

  root "tasks#index"
end
