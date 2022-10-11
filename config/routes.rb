Rails.application.routes.draw do
  resources :pictures do
    collection do
      post :confirm
      patch :update
    end
  end
  resources :sessions, only: [:new, :create, :destroy]
  resources :users
  root 'users#new'
end
