Rails.application.routes.draw do

  root "categories#index"

  resources :categories do
    resources :games do
      resources :reviews
    end
  end
end
