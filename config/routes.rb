Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  resources :movies, only: [:index, :show] do
    resources :showtimes, only: [:index, :show] do
      resources :bookings, only: [:create,:destroy,:index]
    end
  end
  post '/login', to: 'auth#create'
  get "/bookings", to: "bookings#index" 
  resources :users

  resources :movies
end
