Rails.application.routes.draw do
  root "home#index"
  get 'profile', to: 'home#profile', as: 'profile'
  get 'auth/:provider/callback', to: "sessions#create"
  delete 'sign_out', to: "sessions#destroy", as: 'sign_out'

  get 'example', to: 'sessions#example' # posterity
end
