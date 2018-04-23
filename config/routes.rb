Rails.application.routes.draw do

	root 'histories#index'
	resources :histories
	get 'users/sign_up', to: 'users#new'
	post 'users', to: 'users#create'
	get 'users/sign_in', to: 'sessions#new'
	resources :sessions, only: [:create, :destroy]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
