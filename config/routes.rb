Rails.application.routes.draw do
  root to: "sessions#new"

  resources :users do
    resources :favorites
  end
  resource :session, only: [:create, :new, :destroy]
end
