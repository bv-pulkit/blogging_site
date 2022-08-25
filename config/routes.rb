Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
	devise_for :views
  devise_for :users
  get 'home/index'
	root "home#index"

	resources :articles
	resources :users do
		resources :articles
	end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
