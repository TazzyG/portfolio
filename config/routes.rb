Rails.application.routes.draw do
  devise_for :users
	# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	root 'welcome#index' 

	resources :projects
	resources :showcases
  resources "contacts", only: [:new, :create]

  match '/contacts', to: 'contacts#new',  via: 'get'

  get 'tags/:tag', to: 'welcome#index', as: :tag
  resources :tags
  
	
end
