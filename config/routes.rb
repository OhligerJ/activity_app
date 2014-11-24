Rails.application.routes.draw do

  get 'users/profile'

  get 'activities/new'

  get 'activities/index'

  root 'home#index'
  get 'home/index', as: 'home'

  get 'access/forgot_password'

  get 'login', to: "access#login", as: 'login'

  get 'signup', to: "access#signup", as: 'signup'

  post 'login', to: "access#attempt_login"

  post 'signup', to: "access#create"

  get 'home', to: "access#home"

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
