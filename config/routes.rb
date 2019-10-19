Rails.application.routes.draw do
  root  'home#index'

  resources :secret_codes, only: [:index, :new, :create, :destroy]

  # devise_for :users
  devise_for :users, controllers: {
        sessions: 'users/sessions',
        registrations: 'users/registrations'
      }

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
