Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :kids
  resources :rewards
  resources :games, only: [:index, :show] do
    resources :reservations, only: [:new, :create, :starscounter] do
      resources :days, only: [:index, :show]
    end
  end



  resources :reservations, only: [:update] do
    resources :days, only: [:index, :show] do
      resources :comments, only: :create
    end
  end
  get 'dashboard', to: 'pages#dashboard', as: :dashboard

end
