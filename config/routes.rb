Rails.application.routes.draw do
  root to: 'articles#index'
  resources :articles

  namespace :api do
    resources :articles, only: %i[index show update create destroy]
  end
end
