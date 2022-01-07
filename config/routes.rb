Rails.application.routes.draw do
  resources :products
  resources :comments
  resources :posts
  
  root to: "home#indexVisit"

  get 'home/indexVisit'
  get 'home/indexUser'
  get 'home/market'
  get 'home/about'
  
  

  devise_for :admins

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    passwords: 'users/passwords',
    registrations: 'users/registrations',
    omniauth_callbacks: 'users/omniauth_callbacks'
  }

  devise_for :veterinaries, controllers: {
    sessions: 'veterinaries/sessions',
    passwords: 'veterinaries/passwords',
    registrations: 'veterinaries/registrations'
  }

  resource :cart, only: [:show, :update, :destroy] do
    member do
      post :pay_with_paypal
      get :process_paypal_payment
    end
  end


end

