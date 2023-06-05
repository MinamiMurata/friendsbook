Rails.application.routes.draw do
  root "sessions#new"
  resources :users, only: %i[new create show]
  resources :sessions, only: %i[new create destroy]
  resources :feeds do
    collection { post :confirm }
  end
end
