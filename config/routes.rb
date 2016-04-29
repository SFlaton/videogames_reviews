Rails.application.routes.draw do
  get 'reviews/index'

  root "categories#index"

  resources :categories do
    resources :games
  end
end
