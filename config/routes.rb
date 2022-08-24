Rails.application.routes.draw do
  devise_for :users
  get 'home/index'
  devise_for :views
	root "home#index"

	resources :users do
		resources :articles
	end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
