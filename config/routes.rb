Rails.application.routes.draw do
  devise_for :users
	# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	root 'welcome#index' 

	resources :projects do
		resources :project_infos
	end
	
	resources :showcases
  resources "contacts", only: [:new, :create]

  match '/contacts', to: 'contacts#new',  via: 'get' 
	
end
