Rails.application.routes.draw do
  devise_for :users
  get 'welcome/index'

  resources :notes

  # To: Define a different root route for logged in out users the root of the application needs to be below the autheticated route
  authenticated :user do
    root 'notes#index', as: :authenticated_root
  end
	root :to => 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
