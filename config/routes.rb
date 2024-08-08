Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get 'up' => 'rails/health#show', as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"


  resources :restaurants, only: %i[index new create show] do
    resources :reviews, only: %i[new create]
  end


  #GET 'restaurants', to: 'restaurants#index'
  #GET 'restaurants/new', to: 'restaurants#new', as: :new_restaurant
  #POST 'restaurants', to: 'restaurants#create'
  #GET 'restaurants/:id', to: 'restaurants#show', as: :restaurant

  #GET 'restaurants/:id/reviews/new', to: 'reviews#new', as: :new_review
  #POST 'restaurants/:id/reviews', to: 'reviews#create'
end
