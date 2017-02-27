Rails.application.routes.draw do
  root "home#index"

  resources :reads, only: [:index]

  namespace :api do
    namespace :v1 do
      resources :reads, only: [:index, :create]
    end
  end
end
