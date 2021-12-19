Rails.application.routes.draw do
  root to: "home#indexVisit"

  get 'home/indexVisit'
  get 'home/indexUser'
  get 'home/market'
  
  resources :products

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

  #  resource :cart, only: [:show, :update, :destroy] do
  #    member do
  #      post :pay_with_paypal
  #      get :process_paypal_payment
  #    end
  #  end
end

