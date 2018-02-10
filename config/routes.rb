Rails.application.routes.draw do
	root 'home#index'

	get '/home' => 'home#index'
	post '/home' => 'home#create'

	get '/home/new' => 'home#new'

	get '/home/:id/edit' => 'home#edit', as: "edit_home"

	put '/home/:id' => 'home#update'
	patch '/home/:id' => 'home#update'

	delete '/home/:id' => 'home#destroy'

	get '/home/:id' => 'home#show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
