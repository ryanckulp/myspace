Rails.application.routes.draw do

  root 'home#dwight'

  get 'auth/:provider/callback', to: "sessions#create"
  delete 'sign_out', to: "sessions#destroy", as: 'sign_out'

end
