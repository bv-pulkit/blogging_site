Rails.application.routes.draw do
  devise_for :views
  devise_for :users
  get 'home/index'
	root "home#index"

	resources :users do
		resources :articles
	end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
