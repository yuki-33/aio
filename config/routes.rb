Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'home#index'
  get 'about', to: "home#about", as: 'about'
  get 'contact', to: "home#contact", as: 'contact'
  get 'privacy', to: "home#privacy", as: 'privacy'

  resources :home do
    post 'inquiry' => 'home#inquiry', on: :collection
  end

  resources :constructions

  namespace :login do
    resource :constructions, only: [:create, :edit, :update]
  end

end
