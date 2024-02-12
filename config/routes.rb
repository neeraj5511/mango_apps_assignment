Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  # Defines the root path route ("/")
  # root "posts#index"
  resources :movies, only: [:index, :show] do
    resources :showtimes, only: [:index, :show] do
      resources :bookings, only: [:create]
    end
  end
  post '/login', to: 'auth#create'
  get "/bookings", to: "bookings#index"
  delete "/bookings/:id", to: "bookings#destroy"
  resources :users
end
