Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :kids
  resources :rewards
  resources :games, only: [:index, :show] do
    resources :reservations, only: [:new, :create, :starscounter]
    end




  resources :reservations, only: [:update] do
    resources :comments, only: :create
  end
  get 'dashboard', to: 'pages#dashboard', as: :dashboard

end
