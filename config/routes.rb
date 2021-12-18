Rails.application.routes.draw do
  devise_for :veterinaries
  devise_for :admins
  devise_for :users
  get 'home/indexVisit'
  get 'home/indexUser'
  get 'home/market'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
