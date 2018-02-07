Rails.application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

  get 'auth/:provider/callback', to: 'posts#create'
  get 'auth/failure', to: redirect('/')
  get 'signout', to: 'posts#destroy', as: 'signout'

  resources :posts
  resource :static, only: [:show]

  root :to => 'static#homepage'
end
