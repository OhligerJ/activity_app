Rails.application.routes.draw do

  root 'home#index'
  get 'home/index'

  get 'access/forgot_password'

  get 'login', to: "access#login", as: 'login'

  get 'signup', to: "access#signup", as: 'signup'

  post 'login', to: "access#attempt_login"

  post 'signup', to: "access#create"

  get 'home', to: "access#home", as: 'home'

  get 'logout', to: "access#logout"

  get 'forgot', to: 'access#forgot_password'
  post 'send_reset', to: 'access#send_reset'
  get 'reset/:token', to: 'access#reset_password'
  post 'update_password', to: 'access#update_password'



  resources :users do
    resources :activities
  end

  resources :activities
  
end
