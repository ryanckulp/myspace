Rails.application.routes.draw do

  root "home#index"
  get 'profile/:id', to: 'home#profile', as: 'profile'
  get 'auth/facebook', as: 'auth'
  get 'auth/:provider/callback', to: "sessions#create"
  delete 'sign_out', to: "sessions#destroy", as: 'sign_out'

end
