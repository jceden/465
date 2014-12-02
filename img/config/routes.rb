Rails.application.routes.draw do
  devise_for :users do get '/users/sign_out' => 'devise/sessions#destroy' end
  resources :images do
	resources :tags, shallow: true
	resources :accesses, shallow:true
	end
root 'images#index'
end
