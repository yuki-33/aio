Rails.application.routes.draw do

  root to: 'home#index'

  devise_for :admins, controllers: {sessions: 'admin/sessions', passwords: 'admin/passwords', :registrations => "admin/registrations"}
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :home do
    post 'inquiry' => 'home#inquiry', on: :collection
  end
  get 'about', to: "home#about", as: 'about'
  get 'contact', to: "home#contact", as: 'contact'
  get 'privacy', to: "home#privacy", as: 'privacy'

  resources :constructions, only: [:index, :show]

  namespace :admin do
    root to: 'home#index'
    resources :constructions
  end

end
