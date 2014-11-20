Rails.application.routes.draw do
  get 'access/forgot_password'

  get 'login', to: "access#login", as: 'login'

  get 'signup', to: "access#signup", as: 'signup'

  post 'login', to: "access#attempt_login"

  post 'signup', to: "access#create"

  get 'home', to: "access#home", as: 'home'

  get 'logout', to: "access#logout"

  get '/forgot' => 'access#forgot_password'
  post '/send_reset' => 'access#send_reset'
  get '/reset/:token' => 'access#reset_password'
  post '/update_password' => 'access#update_password'

  root 'home#index'
  get 'home/index'

  
end
