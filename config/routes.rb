Rails.application.routes.draw do
  devise_for :users
  root to: 'articles#index'
  resources :articles

  namespace :api do
    resources :articles, only: %i[index show update create destroy]
  end

  get 'protected', to: 'protected#index', as: :protected
end
