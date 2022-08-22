Rails.application.routes.draw do
	root "users#index"

	resources :users do
		resources :articles
	end	
	get "/display", to: "users#display"
	post "/signin", to: "sessions#create", as: "signin"
	resources :sessions
	resources :passwords
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
